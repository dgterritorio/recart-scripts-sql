-- vértices de cota diferente da mediana das cotas da curva de nível
WITH f AS (
         SELECT curva_de_nivel.identificador,
            public.st_zmin((curva_de_nivel.geometria)::public.box3d) AS zmin,
            public.st_zmax((curva_de_nivel.geometria)::public.box3d) AS zmax,
            curva_de_nivel.geometria
           FROM public.curva_de_nivel
          WHERE (public.st_zmin((curva_de_nivel.geometria)::public.box3d) <> public.st_zmax((curva_de_nivel.geometria)::public.box3d))
        ), p AS (
         SELECT f.identificador,
            public.st_dumppoints(f.geometria) AS dump
           FROM f
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        ), m AS (
         SELECT percentile_disc((0.5)::double precision) WITHIN GROUP (ORDER BY q_1.z) AS mediana,
            q_1.identificador
           FROM q q_1
          GROUP BY q_1.identificador
        )
 SELECT row_number() OVER () AS id,
    q.identificador,
    q.index,
    q.z,
    q.geom,
    m.mediana
   FROM (q
     LEFT JOIN m ON ((q.identificador = m.identificador)))
  WHERE (q.z <> m.mediana);
