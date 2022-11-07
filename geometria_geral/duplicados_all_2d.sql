
-- Verifica se existem objetos 2D com geometria igual dentro de cada tabela. Através da
-- comparação de todos com todos (cross-join) e utilização da função ST_Equals (geom1,geom2).
-- Nota 1: os elementos duplicados vão aparecer em dois registos, com os mesmos UUID em ordem inversa.
-- Nota 2: este script pode ser muito demorado a correr devido ao "cross-join".

SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'area_agricola_florestal_mato'::text AS ft
   FROM area_agricola_florestal_mato a
     JOIN area_agricola_florestal_mato b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'area_infra_trans_aereo'::text AS ft
   FROM area_infra_trans_aereo a
     JOIN area_infra_trans_aereo b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'area_infra_trans_aereo'::text AS ft
   FROM area_infra_trans_aereo a
     JOIN area_infra_trans_aereo b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'area_infra_trans_ferrov'::text AS ft
   FROM area_infra_trans_ferrov a
     JOIN area_infra_trans_ferrov b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'area_infra_trans_rodov'::text AS ft
   FROM area_infra_trans_rodov a
     JOIN area_infra_trans_rodov b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'area_infra_trans_via_navegavel'::text AS ft
   FROM area_infra_trans_via_navegavel a
     JOIN area_infra_trans_via_navegavel b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'area_trabalho'::text AS ft
   FROM area_trabalho a
     JOIN area_trabalho b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'areas_artificializadas'::text AS ft
   FROM areas_artificializadas a
     JOIN areas_artificializadas b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'barreira'::text AS ft
   FROM barreira a
     JOIN barreira b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'cabo_electrico'::text AS ft
   FROM cabo_electrico a
     JOIN cabo_electrico b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'conduta_de_agua'::text AS ft
   FROM conduta_de_agua a
     JOIN conduta_de_agua b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'constru_linear'::text AS ft
   FROM constru_linear a
     JOIN constru_linear b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'constru_polig'::text AS ft
   FROM constru_polig a
     JOIN constru_polig b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'designacao_local'::text AS ft
   FROM designacao_local a
     JOIN designacao_local b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'edificio'::text AS ft
   FROM edificio a
     JOIN edificio b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'elem_assoc_agua'::text AS ft
   FROM elem_assoc_agua a
     JOIN elem_assoc_agua b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'elem_assoc_eletricidade'::text AS ft
   FROM elem_assoc_eletricidade a
     JOIN elem_assoc_eletricidade b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'elem_assoc_pgq'::text AS ft
   FROM elem_assoc_pgq a
     JOIN elem_assoc_pgq b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'elem_assoc_telecomunicacoes'::text AS ft
   FROM elem_assoc_telecomunicacoes a
     JOIN elem_assoc_telecomunicacoes b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'fronteira'::text AS ft
   FROM fronteira a
     JOIN fronteira b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'infra_trans_aereo'::text AS ft
   FROM infra_trans_aereo a
     JOIN infra_trans_aereo b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'infra_trans_ferrov'::text AS ft
   FROM infra_trans_ferrov a
     JOIN infra_trans_ferrov b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'infra_trans_rodov'::text AS ft
   FROM infra_trans_rodov a
     JOIN infra_trans_rodov b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'infra_trans_via_navegavel'::text AS ft
   FROM infra_trans_via_navegavel a
     JOIN infra_trans_via_navegavel b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'margem'::text AS ft
   FROM margem a
     JOIN margem b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'mob_urbano_sinal'::text AS ft
   FROM mob_urbano_sinal a
     JOIN mob_urbano_sinal b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'oleoduto_gasoduto_subtancias_quimicas'::text AS ft
   FROM oleoduto_gasoduto_subtancias_quimicas a
     JOIN oleoduto_gasoduto_subtancias_quimicas b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'ponto_interesse'::text AS ft
   FROM ponto_interesse a
     JOIN ponto_interesse b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'seg_via_cabo'::text AS ft
   FROM seg_via_cabo a
     JOIN seg_via_cabo b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'sinal_geodesico'::text AS ft
   FROM sinal_geodesico a
     JOIN sinal_geodesico b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria);
