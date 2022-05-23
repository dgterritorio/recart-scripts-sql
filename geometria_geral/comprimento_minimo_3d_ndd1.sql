-- Valida em comprimento os objectos lineares em 3D. Medição com a função ST_3DLength.
-- Valor mínimo NdD1: 0.2 metros.

SELECT curva_de_nivel.identificador,
    st_3dlength(curva_de_nivel.geometria) AS length,
    st_setsrid(curva_de_nivel.geometria::geometry(LineStringZ), 3763) AS geom,
    'curvas de nível'::text AS ft
   FROM curva_de_nivel
  WHERE st_3dlength(curva_de_nivel.geometria) < 0.2::double precision
UNION
 SELECT linha_de_quebra.identificador,
    st_3dlength(linha_de_quebra.geometria) AS length,
    st_setsrid(linha_de_quebra.geometria::geometry(LineStringZ), 3763) AS geom,
    'linha de quebra'::text AS ft
   FROM linha_de_quebra
  WHERE st_3dlength(linha_de_quebra.geometria) < 0.2::double precision
UNION
 SELECT curso_de_agua_eixo.identificador,
    st_3dlength(curso_de_agua_eixo.geometria) AS length,
    st_setsrid(curso_de_agua_eixo.geometria::geometry(LineStringZ), 3763) AS geom,
    'curso_de_agua_eixo'::text AS ft
   FROM curso_de_agua_eixo
  WHERE st_3dlength(curso_de_agua_eixo.geometria) < 0.2::double precision
UNION
 SELECT seg_via_ferrea.identificador,
    st_3dlength(seg_via_ferrea.geometria) AS length,
    st_setsrid(seg_via_ferrea.geometria::geometry(LineStringZ), 3763) AS geom,
    'seg_via_ferrea'::text AS ft
   FROM seg_via_ferrea
  WHERE st_3dlength(seg_via_ferrea.geometria) < 0.2::double precision
UNION
 SELECT seg_via_rodov.identificador,
    st_3dlength(seg_via_rodov.geometria) AS length,
    st_setsrid(seg_via_rodov.geometria::geometry(LineStringZ), 3763) AS geom,
    'seg_via_rodov'::text AS ft
   FROM seg_via_rodov
  WHERE st_3dlength(seg_via_rodov.geometria) < 0.2::double precision
UNION
 SELECT via_rodov_limite.identificador,
    st_3dlength(via_rodov_limite.geometria) AS length,
    st_setsrid(via_rodov_limite.geometria::geometry(LineStringZ), 3763) AS geom,
    'via_rodov_limite'::text AS ft
   FROM via_rodov_limite
  WHERE st_3dlength(via_rodov_limite.geometria) < 0.2::double precision;
