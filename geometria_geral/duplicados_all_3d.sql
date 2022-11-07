- --Verifica se existem objetos 3D com geometria igual dentro de cada tabela. Através da
-- comparação de todos com todos (cross-join) e utilização da função ST_Equals (geom1,geom2).
-- Nota 1: os elementos duplicados vão aparecer em dois registos, com os mesmos UUID em ordem inversa.
-- Nota 2: este script pode ser muito demorado a correr devido ao "cross-join".


SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'agua_lentica'::text AS ft
   FROM agua_lentica a
     JOIN agua_lentica b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'curso_de_agua_area'::text AS ft
   FROM curso_de_agua_area a
     JOIN curso_de_agua_area b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'curso_de_agua_eixo'::text AS ft
   FROM curso_de_agua_eixo a
     JOIN curso_de_agua_eixo b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'curva_de_nivel'::text AS ft
   FROM curva_de_nivel a
     JOIN curva_de_nivel b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'fronteira_terra_agua'::text AS ft
   FROM fronteira_terra_agua a
     JOIN fronteira_terra_agua b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'linha_de_quebra'::text AS ft
   FROM linha_de_quebra a
     JOIN linha_de_quebra b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'nascente'::text AS ft
   FROM nascente a
     JOIN nascente b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'no_trans_rodov'::text AS ft
   FROM no_trans_rodov a
     JOIN no_trans_rodov b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'no_trans_ferrov'::text AS ft
   FROM no_trans_ferrov a
     JOIN no_trans_ferrov b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'obra_arte'::text AS ft
   FROM obra_arte a
     JOIN obra_arte b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'ponto_cotado'::text AS ft
   FROM ponto_cotado a
     JOIN ponto_cotado b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'queda_de_agua'::text AS ft
   FROM queda_de_agua a
     JOIN queda_de_agua b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'seg_via_ferrea'::text AS ft
   FROM seg_via_ferrea a
     JOIN seg_via_ferrea b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'seg_via_rodov'::text AS ft
   FROM seg_via_rodov a
     JOIN seg_via_rodov b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'via_rodov_limite'::text AS ft
   FROM via_rodov_limite a
     JOIN via_rodov_limite b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria)
UNION
 SELECT a.identificador AS id1,
    b.identificador AS id2,
    a.geometria,
    'zona_humida'::text AS ft
   FROM zona_humida a
     JOIN zona_humida b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_equals(a.geometria, b.geometria);
