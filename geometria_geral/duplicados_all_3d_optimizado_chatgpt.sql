-- CartTop 2.0 
-- Verifica se existem objetos 3D com geometria igual dentro de cada tabela. 
-- Em vez de utilizar cross-join e ST_Equals, utiliza Group By na geometria

SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
      'agua_lentica' as ft
FROM agua_lentica
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'curso_de_agua_area' as ft
FROM curso_de_agua_area
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'curso_de_agua_eixo' as ft
FROM curso_de_agua_eixo
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'no_hidrografico' as ft
FROM no_hidrografico
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'curva_de_nivel' as ft
FROM curva_de_nivel
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
        'fronteira_terra_agua' as ft
FROM fronteira_terra_agua
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'linha_de_quebra' as ft
FROM linha_de_quebra
GROUP BY geometria
HAVING COUNT(*) > 1
UNION 
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'nascente' as ft
FROM nascente
GROUP BY geometria
HAVING COUNT(*) > 1
UNION  
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'no_trans_ferrov' as ft
FROM no_trans_ferrov
GROUP BY geometria
HAVING COUNT(*) > 1
UNION  
select geom, ids, ft from
(SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       array_agg(valor_tipo_no_trans_rodov) AS valor,
       'no_trans_rodov' as ft
FROM no_trans_rodov
GROUP BY geom
HAVING COUNT(*) > 1) sub
where  not((array_position(valor, '4') = 1 and array_position(valor, '5') = 2) or 
(array_position(valor, '5') = 1 and array_position(valor, '4') = 2))
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'obra_arte' as ft
FROM obra_arte
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'ponto_cotado' as ft
FROM ponto_cotado
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'queda_de_agua' as ft
FROM queda_de_agua
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'seg_via_ferrea' as ft
FROM seg_via_ferrea
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'seg_via_rodov' as ft
FROM seg_via_rodov
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
 SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'via_rodov_limite' as ft
FROM via_rodov_limite
GROUP BY geometria
HAVING COUNT(*) > 1
UNION
 SELECT ST_AsText(geometria) AS geom,
       array_agg(identificador) AS ids,
       'zona_humida' as ft
FROM zona_humida
GROUP BY geometria
HAVING COUNT(*) > 1;