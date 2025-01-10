-- CartTop 2.0
-- contagem objectos que intersectam as áeas de amostragem definidas em "sample_area", ordenada pelo tema e nome objecto

WITH p as (SELECT 'Auxiliar'::text AS th,
    'area_trabalho'::text AS ft,
    1 AS num
   FROM area_trabalho
UNION
 SELECT 'Hidrografia'::text AS th,
    'barreira'::text AS ft,
    count(*) AS num
   FROM barreira
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(barreira.geometria, sample_area.geom)
UNION
 SELECT 'Hidrografia'::text AS th,
    'terreno_marginal'::text AS ft,
    count(*) AS num
   FROM terreno_marginal
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(terreno_marginal.geometria, sample_area.geom)
UNION
 SELECT 'Ocupação do solo'::text AS th,
    'area_agricola_florestal_mato'::text AS ft,
    count(*) AS num
   FROM area_agricola_florestal_mato
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(area_agricola_florestal_mato.geometria, sample_area.geom)
UNION
 SELECT 'Ocupação do solo'::text AS th,
    'areas_artificializadas'::text AS ft,
    count(*) AS num
   FROM areas_artificializadas
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(areas_artificializadas.geometria, sample_area.geom)
UNION
 SELECT 'Transporte aéreo'::text AS th,
    'area_infra_trans_aereo'::text AS ft,
    count(*) AS num
   FROM area_infra_trans_aereo
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(area_infra_trans_aereo.geometria, sample_area.geom)
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'area_infra_trans_ferrov'::text AS ft,
    count(*) AS num
   FROM area_infra_trans_ferrov
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(area_infra_trans_ferrov.geometria, sample_area.geom)
UNION
 SELECT 'Transporte por cabo'::text AS th,
    'area_infra_trans_cabo'::text AS ft,
    count(*) AS num
   FROM area_infra_trans_cabo
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(area_infra_trans_cabo.geometria, sample_area.geom)
UNION
 SELECT 'Transporte por via navegável'::text AS th,
    'area_infra_trans_via_navegavel'::text AS ft,
    count(*) AS num
   FROM area_infra_trans_via_navegavel
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(area_infra_trans_via_navegavel.geometria, sample_area.geom)
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'area_infra_trans_rodov'::text AS ft,
    count(*) AS num
   FROM area_infra_trans_rodov
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(area_infra_trans_rodov.geometria, sample_area.geom)
UNION
 SELECT 'Construções'::text AS th,
    'edificio'::text AS ft,
    count(*) AS num
   FROM edificio
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(edificio.geometria, sample_area.geom)
UNION
 SELECT 'Construções'::text AS th,
    'ponto_interesse'::text AS ft,
    count(*) AS num
   FROM ponto_interesse
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(ponto_interesse.geometria, sample_area.geom)
UNION
 SELECT 'Construções'::text AS th,
    'constru_polig'::text AS ft,
    count(*) AS num
   FROM constru_polig
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(constru_polig.geometria, sample_area.geom)
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'elem_assoc_agua'::text AS ft,
    count(*) AS num
   FROM elem_assoc_agua
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(elem_assoc_agua.geometria, sample_area.geom)
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'elem_assoc_eletricidade'::text AS ft,
    count(*) AS num
   FROM elem_assoc_eletricidade
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(elem_assoc_eletricidade.geometria, sample_area.geom)
UNION
 SELECT 'Mobiliário urbano e sinalização'::text AS th,
    'mob_urbano_sinal'::text AS ft,
    count(*) AS num
   FROM mob_urbano_sinal
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(mob_urbano_sinal.geometria, sample_area.geom)
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'elem_assoc_pgq'::text AS ft,
    count(*) AS num
   FROM elem_assoc_pgq
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(elem_assoc_pgq.geometria, sample_area.geom)
UNION
 SELECT 'Hidrografia'::text AS th,
    'agua_lentica'::text AS ft,
    count(*) AS num
   FROM agua_lentica
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(agua_lentica.geometria, sample_area.geom)
UNION
 SELECT 'Hidrografia'::text AS th,
    'curso_de_agua_area'::text AS ft,
    count(*) AS num
   FROM curso_de_agua_area
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(curso_de_agua_area.geometria, sample_area.geom)
UNION
 SELECT 'Hidrografia'::text AS th,
    'zona_humida'::text AS ft,
    count(*) AS num
   FROM zona_humida
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(zona_humida.geometria, sample_area.geom)
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'obra_arte'::text AS ft,
    count(*) AS num
   FROM obra_arte
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(obra_arte.geometria, sample_area.geom)
UNION
 SELECT 'Hidrografia'::text AS th,
    'fronteira_terra_agua'::text AS ft,
    count(*) AS num
   FROM fronteira_terra_agua
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(fronteira_terra_agua.geometria, sample_area.geom)
UNION
 SELECT 'Construções'::text AS th,
    'constru_linear'::text AS ft,
    count(*) AS num
   FROM constru_linear
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(constru_linear.geometria, sample_area.geom)
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'cabo_electrico'::text AS ft,
    count(*) AS num
   FROM cabo_electrico
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(cabo_electrico.geometria, sample_area.geom)
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'conduta_de_agua'::text AS ft,
    count(*) AS num
   FROM conduta_de_agua
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(conduta_de_agua.geometria, sample_area.geom)
UNION
 SELECT 'Altimetria'::text AS th,
    'curvas de nível'::text AS ft,
    count(*) AS num
   FROM curva_de_nivel
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(curva_de_nivel.geometria, sample_area.geom)
UNION
 SELECT 'Altimetria'::text AS th,
    'linha de quebra'::text AS ft,
    count(*) AS num
   FROM linha_de_quebra
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(linha_de_quebra.geometria, sample_area.geom)
UNION
 SELECT 'Hidrografia'::text AS th,
    'curso_de_agua_eixo'::text AS ft,
    count(*) AS num
   FROM curso_de_agua_eixo
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(curso_de_agua_eixo.geometria, sample_area.geom)
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'seg_via_ferrea'::text AS ft,
    count(*) AS num
   FROM seg_via_ferrea
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(seg_via_ferrea.geometria, sample_area.geom)
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'seg_via_rodov'::text AS ft,
    count(*) AS num
   FROM seg_via_rodov
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(seg_via_rodov.geometria, sample_area.geom)
UNION
 SELECT 'Transporte por cabo'::text AS th,
    'seg_via_cabo'::text AS ft,
    count(*) AS num
   FROM seg_via_cabo
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(seg_via_cabo.geometria, sample_area.geom)
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'via_rodov_limite'::text AS ft,
    count(*) AS num
   FROM via_rodov_limite
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(via_rodov_limite.geometria, sample_area.geom)
UNION
( with c as (SELECT municipio.identificador
   FROM municipio
   JOIN reconhecimento_campo.sample_area ON ST_Intersects(municipio.geometria, sample_area.geom) group by identificador)
   select 'Unidades administrativas'::text AS th,
    'municipio'::text AS ft,
    count(*) AS num from c)
UNION
 (with f as (SELECT freguesia.identificador
   FROM freguesia
   JOIN reconhecimento_campo.sample_area ON ST_Intersects(freguesia.geometria, sample_area.geom) group by identificador)
   select 'Unidades administrativas'::text AS th,
    'freguesia'::text AS ft,
    count(*) AS num from f)
UNION
 (with d as (SELECT distrito.identificador
   from distrito
   JOIN reconhecimento_campo.sample_area ON ST_Intersects(distrito.geometria, sample_area.geom) group by identificador)
   select 'Unidades administrativas'::text AS th,
    'distrito'::text AS ft,
    count(*) AS num from d)
UNION
 SELECT 'Altimetria'::text AS th,
    'ponto_cotado'::text AS ft,
    count(*) AS num
   FROM ponto_cotado
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(ponto_cotado.geometria, sample_area.geom)
UNION
 SELECT 'Construções'::text AS th,
    'sinal_geodesico'::text AS ft,
    count(*) AS num
   FROM sinal_geodesico
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(sinal_geodesico.geometria, sample_area.geom)
UNION
 SELECT 'Hidrografia'::text AS th,
    'nascente'::text AS ft,
    count(*) AS num
   FROM nascente
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(nascente.geometria, sample_area.geom)
UNION
 SELECT 'Hidrografia'::text AS th,
    'no_hidrografico'::text AS ft,
    count(*) AS num
   FROM no_hidrografico
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(no_hidrografico.geometria, sample_area.geom)
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'no_trans_ferrov'::text AS ft,
    count(*) AS num
   FROM no_trans_ferrov
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(no_trans_ferrov.geometria, sample_area.geom)
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'no_trans_rodov'::text AS ft,
    count(*) AS num
   FROM no_trans_rodov
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(no_trans_rodov.geometria, sample_area.geom)
UNION
 SELECT 'Hidrografia'::text AS th,
    'queda_de_agua'::text AS ft,
    count(*) AS num
   FROM queda_de_agua
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(queda_de_agua.geometria, sample_area.geom)
UNION
( WITH ap AS (
         SELECT adm_publica.identificador AS id,
            edificio.geometria AS geom
           FROM adm_publica
             JOIN lig_adm_publica_edificio ON adm_publica.identificador = lig_adm_publica_edificio.adm_publica_id
             LEFT JOIN edificio ON lig_adm_publica_edificio.edificio_id = edificio.identificador
        ), ap_f AS (
         SELECT ap.id,
            st_union(ap.geom) AS st_union
           FROM ap
          GROUP BY ap.id
        )
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'adm_publica'::text AS ft,
    count(*) AS num
   FROM ap_f
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(ap_f.st_union, sample_area.geom))
UNION
( WITH euc AS (
         SELECT equip_util_coletiva.identificador AS id,
            edificio.geometria AS geom
           FROM equip_util_coletiva
             JOIN lig_equip_util_coletiva_edificio ON equip_util_coletiva.identificador = lig_equip_util_coletiva_edificio.equip_util_coletiva_id
             LEFT JOIN edificio ON lig_equip_util_coletiva_edificio.edificio_id = edificio.identificador
        UNION
         SELECT equip_util_coletiva.identificador AS id,
            areas_artificializadas.geometria AS geom
           FROM equip_util_coletiva
             JOIN areas_artificializadas ON equip_util_coletiva.identificador = areas_artificializadas.equip_util_coletiva_id
        ), euc_f AS (
         SELECT euc.id,
            st_union(euc.geom) AS st_union
           FROM euc
          GROUP BY euc.id
        )
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'equip_util_coletiva'::text AS ft,
    count(*) AS num
   FROM euc_f
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(euc_f.st_union, sample_area.geom))
UNION
( WITH iga AS (
         SELECT inst_gestao_ambiental.identificador AS id,
            edificio.geometria AS geom
           FROM inst_gestao_ambiental
             JOIN edificio ON inst_gestao_ambiental.identificador = edificio.inst_gestao_ambiental_id
        UNION
         SELECT inst_gestao_ambiental.identificador AS id,
            areas_artificializadas.geometria AS geom
           FROM inst_gestao_ambiental
             JOIN areas_artificializadas ON inst_gestao_ambiental.identificador = areas_artificializadas.inst_gestao_ambiental_id
        ), iga_f AS (
         SELECT iga.id,
            st_union(iga.geom) AS st_union
           FROM iga
          GROUP BY iga.id
        )
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'inst_gestao_ambiental'::text AS ft,
    count(*) AS num
   FROM iga_f
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(iga_f.st_union, sample_area.geom))
UNION
( WITH ip AS (
         SELECT inst_producao.identificador AS id,
            edificio.geometria AS geom
           FROM inst_producao
             JOIN edificio ON inst_producao.identificador = edificio.inst_producao_id
        UNION
         SELECT inst_producao.identificador AS id,
            areas_artificializadas.geometria AS geom
           FROM inst_producao
             JOIN areas_artificializadas ON inst_producao.identificador = areas_artificializadas.inst_producao_id
        ), ip_f AS (
         SELECT ip.id,
            st_union(ip.geom) AS st_union
           FROM ip
          GROUP BY ip.id
        )
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'inst_producao'::text AS ft,
    count(*) AS num
   FROM ip_f
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(ip_f.st_union, sample_area.geom))
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'linha_ferrea'::text AS ft,
    0 AS num
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'via_rodov'::text AS ft,
    0 AS num
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'elem_assoc_telecomunicacoes'::text AS ft,
    count(*) AS num
   FROM elem_assoc_telecomunicacoes
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(elem_assoc_telecomunicacoes.geometria, sample_area.geom)
UNION
 SELECT 'Toponímia'::text AS th,
    'designacao_local'::text AS ft,
    count(*) AS num
   FROM designacao_local
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(designacao_local.geometria, sample_area.geom)
UNION
 SELECT 'Transporte aéreo'::text AS th,
    'infra_trans_aereo'::text AS ft,
    count(*) AS num
   FROM infra_trans_aereo
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(infra_trans_aereo.geometria, sample_area.geom)
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'infra_trans_ferrov'::text AS ft,
    count(*) AS num
   FROM infra_trans_ferrov
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(infra_trans_ferrov.geometria, sample_area.geom)
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'infra_trans_rodov'::text AS ft,
    count(*) AS num
   FROM infra_trans_rodov
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(infra_trans_rodov.geometria, sample_area.geom)
UNION
 SELECT 'Transporte por via navegável'::text AS th,
    'infra_trans_via_navegavel'::text AS ft,
    count(*) AS num
   FROM infra_trans_via_navegavel
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(infra_trans_via_navegavel.geometria, sample_area.geom)
UNION
 SELECT 'Unidades administrativas'::text AS th,
    'fronteira'::text AS ft,
    count(*) AS num
   FROM fronteira
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(fronteira.geometria, sample_area.geom)
UNION
SELECT 'Hidrografia'::text AS th,
    'constru_na_margem'::text AS ft,
    count(*) AS num
   FROM constru_na_margem
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(constru_na_margem.geometria, sample_area.geom)
UNION
SELECT 'Construções'::text AS th,
    'numero_policia'::text AS ft,
    count(*) AS num
   FROM numero_policia
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(numero_policia.geometria, sample_area.geom)
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'oleoduto_gasoduto_subtancias_quimicas'::text AS ft,
    count(*) AS num
   FROM oleoduto_gasoduto_subtancias_quimicas
     JOIN reconhecimento_campo.sample_area ON ST_Intersects(oleoduto_gasoduto_subtancias_quimicas.geometria, sample_area.geom))
SELECT th, ft, num from p order by th, ft;
