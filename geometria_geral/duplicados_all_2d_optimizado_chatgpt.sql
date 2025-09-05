
-- CartTop 2.0 
-- Verifica se existem objetos 3D com geometria igual dentro de cada tabela. 
-- Em vez de utilizar cross-join e ST_Equals, utiliza Group By na geometria

SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'area_agricola_florestal_mato' as ft
FROM area_agricola_florestal_mato
GROUP BY geometria
HAVING COUNT(*) > 1
union
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'area_infra_trans_aereo' as ft
FROM area_infra_trans_aereo
GROUP BY geometria
HAVING COUNT(*) > 1
union
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'area_infra_trans_ferrov' as ft
FROM area_infra_trans_ferrov
GROUP BY geometria
HAVING COUNT(*) > 1
union
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'area_infra_trans_rodov' as ft
FROM area_infra_trans_rodov
GROUP BY geometria
HAVING COUNT(*) > 1
union
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'area_infra_trans_via_navegavel' as ft
FROM area_infra_trans_via_navegavel
GROUP BY geometria
HAVING COUNT(*) > 1
union
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'area_trabalho' as ft
FROM area_trabalho
GROUP BY geometria
HAVING COUNT(*) > 1
union
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'areas_artificializadas' as ft
FROM areas_artificializadas
GROUP BY geometria
HAVING COUNT(*) > 1
union
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'barreira' as ft
FROM barreira
GROUP BY geometria
HAVING COUNT(*) > 1
union
 SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'cabo_electrico' as ft
FROM cabo_electrico
GROUP BY geometria
HAVING COUNT(*) > 1
union
 SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'conduta_de_agua' as ft
FROM conduta_de_agua
GROUP BY geometria
HAVING COUNT(*) > 1
union
  SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'constru_linear' as ft
FROM constru_linear
GROUP BY geometria
HAVING COUNT(*) > 1
union
  SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'constru_polig' as ft
FROM constru_polig
GROUP BY geometria
HAVING COUNT(*) > 1
union
  SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'designacao_local' as ft
FROM designacao_local
GROUP BY geometria
HAVING COUNT(*) > 1
union
  SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'edificio' as ft
FROM edificio
GROUP BY geometria
HAVING COUNT(*) > 1
union
   SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'elem_assoc_agua' as ft
FROM elem_assoc_agua
GROUP BY geometria
HAVING COUNT(*) > 1
union
   SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'elem_assoc_eletricidade' as ft
FROM elem_assoc_eletricidade
GROUP BY geometria
HAVING COUNT(*) > 1
union
   SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'elem_assoc_pgq' as ft
FROM elem_assoc_pgq
GROUP BY geometria
HAVING COUNT(*) > 1
union
   SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'elem_assoc_telecomunicacoes' as ft
FROM elem_assoc_telecomunicacoes
GROUP BY geometria
HAVING COUNT(*) > 1
union
   SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'fronteira' as ft
FROM fronteira
GROUP BY geometria
HAVING COUNT(*) > 1
union
   SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'infra_trans_aereo' as ft
FROM infra_trans_aereo
GROUP BY geometria
HAVING COUNT(*) > 1
union
   SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'infra_trans_ferrov' as ft
FROM infra_trans_ferrov
GROUP BY geometria
HAVING COUNT(*) > 1
union
  SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'infra_trans_rodov' as ft
FROM infra_trans_rodov
GROUP BY geometria
HAVING COUNT(*) > 1
union
  SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'infra_trans_via_navegavel' as ft
FROM infra_trans_via_navegavel
GROUP BY geometria
HAVING COUNT(*) > 1
union
  SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'terreno_marginal' as ft
FROM terreno_marginal
GROUP BY geometria
HAVING COUNT(*) > 1
union
 SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'mob_urbano_sinal' as ft
FROM mob_urbano_sinal
GROUP BY geometria
HAVING COUNT(*) > 1
union
 SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'oleoduto_gasoduto_subtancias_quimicas' as ft
FROM oleoduto_gasoduto_subtancias_quimicas
GROUP BY geometria
HAVING COUNT(*) > 1
union
  SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'ponto_interesse' as ft
FROM ponto_interesse
GROUP BY geometria
HAVING COUNT(*) > 1
union
  SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'seg_via_cabo' as ft
FROM seg_via_cabo
GROUP BY geometria
HAVING COUNT(*) > 1
union
 SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'constru_na_margem' as ft
FROM constru_na_margem
GROUP BY geometria
HAVING COUNT(*) > 1
union
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'numero_policia' as ft
FROM numero_policia
GROUP BY geometria
HAVING COUNT(*) > 1
union
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'sinal_geodesico' as ft
FROM sinal_geodesico
GROUP BY geometria
HAVING COUNT(*) > 1;