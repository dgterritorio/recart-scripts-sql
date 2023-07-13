-- Calcula a mediana da cota para cada curva de nível

 WITH d AS (
         SELECT curva_de_nivel_1.identificador,
            public.st_dumppoints(curva_de_nivel_1.geometria) AS dump
           FROM public.curva_de_nivel curva_de_nivel_1
        ), z AS (
         SELECT d.identificador,
            public.st_z((d.dump).geom) AS z
           FROM d
        ), m AS (
         SELECT percentile_disc((0.5)::double precision) WITHIN GROUP (ORDER BY z.z) AS mediana,
            z.identificador
           FROM z
          GROUP BY z.identificador
        )
 SELECT curva_de_nivel.identificador,
    curva_de_nivel.geometria,
    m.mediana
   FROM (public.curva_de_nivel
     LEFT JOIN m ON ((curva_de_nivel.identificador = m.identificador)))
