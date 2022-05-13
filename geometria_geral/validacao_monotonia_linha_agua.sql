--  testa a monotonia do sinal da diferença em z entre vértices consecutivos das linhas de água
WITH p AS (
         SELECT curso_de_agua_eixo.identificador,
            public.st_dumppoints(curso_de_agua_eixo.geometria) AS dump
           FROM public.curso_de_agua_eixo
        ), f AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            (p.dump).geom AS geom
           FROM p
        ), g AS (
         SELECT f.identificador,
            f.index,
            f.z,
            f.geom,
            (f.z - lead(f.z, 1) OVER (PARTITION BY f.identificador ORDER BY f.index)) AS dif
           FROM f
        ), h AS (
         SELECT percentile_disc((0.5)::double precision) WITHIN GROUP (ORDER BY (sign(g_1.dif))) AS mediana_sinal,
            g_1.identificador
           FROM g g_1
          GROUP BY g_1.identificador
        )
 SELECT g.identificador,
    g.index,
    g.z,
    g.geom,
    g.dif,
    h.mediana_sinal
   FROM (g
     LEFT JOIN h ON ((g.identificador = h.identificador)))
  WHERE ((sign(g.dif) <> h.mediana_sinal) AND (h.mediana_sinal <> (0)::double precision) AND (g.dif <> (0)::double precision));
