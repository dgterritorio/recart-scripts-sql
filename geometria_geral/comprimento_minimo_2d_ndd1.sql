-- Valida em comprimento os objectos lineares em 2D. Medição com a função ST_Length.
-- Valor mínimo NdD1: 0.2 metros. 

SELECT barreira.identificador,
    st_length(barreira.geometria) AS length,
    st_setsrid(barreira.geometria::geometry(LineString), 3763) AS geom,
    'barreira'::text AS ft
   FROM barreira
  WHERE ST_GeometryType(geometria)='ST_Linestring' and  st_length(barreira.geometria) < 0.2::double precision
UNION
 SELECT fronteira_terra_agua.identificador,
    st_length(fronteira_terra_agua.geometria) AS length,
    st_setsrid(fronteira_terra_agua.geometria::geometry(LineString), 3763) AS geom,
    'fronteira_terra_agua'::text AS ft
   FROM fronteira_terra_agua
  WHERE st_length(fronteira_terra_agua.geometria) < 0.2::double precision
UNION
 SELECT constru_linear.identificador,
    st_length(constru_linear.geometria) AS length,
    st_setsrid(constru_linear.geometria::geometry(LineString), 3763) AS geom,
    'constru_linear'::text AS ft
   FROM constru_linear
  WHERE st_length(constru_linear.geometria) < 0.2::double precision
UNION
 SELECT cabo_electrico.identificador,
    st_length(cabo_electrico.geometria) AS length,
    st_setsrid(cabo_electrico.geometria::geometry(LineString), 3763) AS geom,
    'cabo_electrico'::text AS ft
   FROM cabo_electrico
  WHERE st_length(cabo_electrico.geometria) < 0.2::double precision
UNION
 SELECT conduta_de_agua.identificador,
    st_length(conduta_de_agua.geometria) AS length,
    st_setsrid(conduta_de_agua.geometria::geometry(LineString), 3763) AS geom,
    'conduta_de_agua'::text AS ft
   FROM conduta_de_agua
  WHERE st_length(conduta_de_agua.geometria) < 0.2::double precision;
