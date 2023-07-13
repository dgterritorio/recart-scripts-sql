-- Contabilização do número de vértices dos objectos tridimensionais

WITH p AS (
         SELECT curso_de_agua_eixo.identificador,
            st_dumppoints(curso_de_agua_eixo.geometria) AS dump
           FROM curso_de_agua_eixo
        )
 SELECT count(*) AS n_vertices,
    'curso_de_agua_eixo'::text AS ft
   FROM p
UNION
( WITH p AS (
         SELECT curso_de_agua_area.identificador,
            st_dumppoints(curso_de_agua_area.geometria) AS dump
           FROM curso_de_agua_area
        )
 SELECT count(*) AS n_vertices,
    'curso_de_agua_area'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT agua_lentica.identificador,
            st_dumppoints(agua_lentica.geometria) AS dump
           FROM agua_lentica
        )
 SELECT count(*) AS n_vertices,
    'agua_lentica'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT curva_de_nivel.identificador,
            st_dumppoints(curva_de_nivel.geometria) AS dump
           FROM curva_de_nivel
        )
 SELECT count(*) AS n_vertices,
    'curva_de_nivel'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT linha_de_quebra.identificador,
            st_dumppoints(linha_de_quebra.geometria) AS dump
           FROM linha_de_quebra
        )
 SELECT count(*) AS n_vertices,
    'linha_de_quebra'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT no_hidrografico.identificador,
            st_dumppoints(no_hidrografico.geometria) AS dump
           FROM no_hidrografico
        )
 SELECT count(*) AS n_vertices,
    'no_hidrografico'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT no_trans_ferrov.identificador,
            st_dumppoints(no_trans_ferrov.geometria) AS dump
           FROM no_trans_ferrov
        )
 SELECT count(*) AS n_vertices,
    'no_trans_ferrov'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT no_trans_rodov.identificador,
            st_dumppoints(no_trans_rodov.geometria) AS dump
           FROM no_trans_rodov
        )
 SELECT count(*) AS n_vertices,
    'no_trans_rodov'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT obra_arte.identificador,
            st_dumppoints(obra_arte.geometria) AS dump
           FROM obra_arte
        )
 SELECT count(*) AS n_vertices,
    'obra_arte'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT ponto_cotado.identificador,
            st_dumppoints(ponto_cotado.geometria) AS dump
           FROM ponto_cotado
        )
 SELECT count(*) AS n_vertices,
    'ponto_cotado'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT seg_via_ferrea.identificador,
            st_dumppoints(seg_via_ferrea.geometria) AS dump
           FROM seg_via_ferrea
        )
 SELECT count(*) AS n_vertices,
    'seg_via_ferrea'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT seg_via_rodov.identificador,
            st_dumppoints(seg_via_rodov.geometria) AS dump
           FROM seg_via_rodov
        )
 SELECT count(*) AS n_vertices,
    'seg_via_rodov'::text AS ft
   FROM p)
UNION
( WITH p AS (
         SELECT via_rodov_limite.identificador,
            st_dumppoints(via_rodov_limite.geometria) AS dump
           FROM via_rodov_limite
        )
 SELECT count(*) AS n_vertices,
    'via_rodov_limite'::text AS ft
   FROM p)