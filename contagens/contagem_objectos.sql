-- CartTop 2.0
-- contagem objectos ordenada pelo tema e nome objecto

WITH p as (SELECT 'Auxiliar'::text AS th,
    'area_trabalho'::text AS ft,
    count(*) AS num
   FROM public.area_trabalho
UNION
 SELECT 'Hidrografia'::text AS th,
    'barreira'::text AS ft,
    count(*) AS num
   FROM public.barreira
UNION
 SELECT 'Hidrografia'::text AS th,
    'terreno_marginal'::text AS ft,
    count(*) AS num
   FROM public.terreno_marginal
UNION
 SELECT 'Ocupação do solo'::text AS th,
    'area_agricola_florestal_mato'::text AS ft,
    count(*) AS num
   FROM public.area_agricola_florestal_mato
UNION
 SELECT 'Ocupação do solo'::text AS th,
    'areas_artificializadas'::text AS ft,
    count(*) AS num
   FROM public.areas_artificializadas
UNION
 SELECT 'Transporte aéreo'::text AS th,
    'area_infra_trans_aereo'::text AS ft,
    count(*) AS num
   FROM public.area_infra_trans_aereo
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'area_infra_trans_ferrov'::text AS ft,
    count(*) AS num
   FROM public.area_infra_trans_ferrov
UNION
 SELECT 'Transporte por cabo'::text AS th,
    'area_infra_trans_cabo'::text AS ft,
    count(*) AS num
   FROM public.area_infra_trans_cabo
UNION
 SELECT 'Transporte por via navegável'::text AS th,
    'area_infra_trans_via_navegavel'::text AS ft,
    count(*) AS num
   FROM public.area_infra_trans_via_navegavel
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'area_infra_trans_rodov'::text AS ft,
    count(*) AS num
   FROM public.area_infra_trans_rodov
UNION
 SELECT 'Construções'::text AS th,
    'edificio'::text AS ft,
    count(*) AS num
   FROM public.edificio
UNION
 SELECT 'Construções'::text AS th,
    'ponto_interesse'::text AS ft,
    count(*) AS num
   FROM public.ponto_interesse
UNION
 SELECT 'Construções'::text AS th,
    'constru_polig'::text AS ft,
    count(*) AS num
   FROM public.constru_polig
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'elem_assoc_agua'::text AS ft,
    count(*) AS num
   FROM public.elem_assoc_agua
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'elem_assoc_eletricidade'::text AS ft,
    count(*) AS num
   FROM public.elem_assoc_eletricidade
UNION
 SELECT 'Mobiliário urbano e sinalização'::text AS th,
    'mob_urbano_sinal'::text AS ft,
    count(*) AS num
   FROM public.mob_urbano_sinal
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'elem_assoc_pgq'::text AS ft,
    count(*) AS num
   FROM public.elem_assoc_pgq
UNION
 SELECT 'Hidrografia'::text AS th,
    'agua_lentica'::text AS ft,
    count(*) AS num
   FROM public.agua_lentica
UNION
 SELECT 'Hidrografia'::text AS th,
    'curso_de_agua_area'::text AS ft,
    count(*) AS num
   FROM public.curso_de_agua_area
UNION
 SELECT 'Hidrografia'::text AS th,
    'zona_humida'::text AS ft,
    count(*) AS num
   FROM public.zona_humida
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'obra_arte'::text AS ft,
    count(*) AS num
   FROM public.obra_arte
UNION
 SELECT 'Hidrografia'::text AS th,
    'fronteira_terra_agua'::text AS ft,
    count(*) AS num
   FROM public.fronteira_terra_agua
UNION
 SELECT 'Construções'::text AS th,
    'constru_linear'::text AS ft,
    count(*) AS num
   FROM public.constru_linear
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'cabo_electrico'::text AS ft,
    count(*) AS num
   FROM public.cabo_electrico
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'conduta_de_agua'::text AS ft,
    count(*) AS num
   FROM public.conduta_de_agua
UNION
 SELECT 'Altimetria'::text AS th,
    'curvas de nível'::text AS ft,
    count(*) AS num
   FROM public.curva_de_nivel
UNION
 SELECT 'Altimetria'::text AS th,
    'linha de quebra'::text AS ft,
    count(*) AS num
   FROM public.linha_de_quebra
UNION
 SELECT 'Hidrografia'::text AS th,
    'curso_de_agua_eixo'::text AS ft,
    count(*) AS num
   FROM public.curso_de_agua_eixo
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'seg_via_ferrea'::text AS ft,
    count(*) AS num
   FROM public.seg_via_ferrea
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'seg_via_rodov'::text AS ft,
    count(*) AS num
   FROM public.seg_via_rodov
UNION
 SELECT 'Transporte por cabo'::text AS th,
    'seg_via_cabo'::text AS ft,
    count(*) AS num
   FROM public.seg_via_cabo
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'via_rodov_limite'::text AS ft,
    count(*) AS num
   FROM public.via_rodov_limite
UNION
 SELECT 'Unidades administrativas'::text AS th,
    'municipio'::text AS ft,
    count(*) AS num
   FROM public.municipio
UNION
 SELECT 'Unidades administrativas'::text AS th,
    'freguesia'::text AS ft,
    count(*) AS num
   FROM public.freguesia
UNION
 SELECT 'Unidades administrativas'::text AS th,
    'distrito'::text AS ft,
    count(*) AS num
   FROM public.distrito
UNION
 SELECT 'Altimetria'::text AS th,
    'ponto_cotado'::text AS ft,
    count(*) AS num
   FROM public.ponto_cotado
UNION
 SELECT 'Construções'::text AS th,
    'sinal_geodesico'::text AS ft,
    count(*) AS num
   FROM public.sinal_geodesico
UNION
 SELECT 'Hidrografia'::text AS th,
    'nascente'::text AS ft,
    count(*) AS num
   FROM public.nascente
UNION
 SELECT 'Hidrografia'::text AS th,
    'no_hidrografico'::text AS ft,
    count(*) AS num
   FROM public.no_hidrografico
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'no_trans_ferrov'::text AS ft,
    count(*) AS num
   FROM public.no_trans_ferrov
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'no_trans_rodov'::text AS ft,
    count(*) AS num
   FROM public.no_trans_rodov
UNION
 SELECT 'Hidrografia'::text AS th,
    'queda_de_agua'::text AS ft,
    count(*) AS num
   FROM public.queda_de_agua
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'adm_publica'::text AS ft,
    count(*) AS num
   FROM public.adm_publica
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'equip_util_coletiva'::text AS ft,
    count(*) AS num
   FROM public.equip_util_coletiva
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'inst_gestao_ambiental'::text AS ft,
    count(*) AS num
   FROM public.inst_gestao_ambiental
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'inst_producao'::text AS ft,
    count(*) AS num
   FROM public.inst_producao
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'linha_ferrea'::text AS ft,
    count(*) AS num
   FROM public.linha_ferrea
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'via_rodov'::text AS ft,
    count(*) AS num
   FROM public.via_rodov
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'elem_assoc_telecomunicacoes'::text AS ft,
    count(*) AS num
   FROM public.elem_assoc_telecomunicacoes
UNION
 SELECT 'Toponímia'::text AS th,
    'designacao_local'::text AS ft,
    count(*) AS num
   FROM public.designacao_local
UNION
 SELECT 'Transporte aéreo'::text AS th,
    'infra_trans_aereo'::text AS ft,
    count(*) AS num
   FROM public.infra_trans_aereo
UNION
 SELECT 'Transporte ferroviário'::text AS th,
    'infra_trans_ferrov'::text AS ft,
    count(*) AS num
   FROM public.infra_trans_ferrov
UNION
 SELECT 'Transporte rodoviário'::text AS th,
    'infra_trans_rodov'::text AS ft,
    count(*) AS num
   FROM public.infra_trans_rodov
UNION
 SELECT 'Transporte por via navegável'::text AS th,
    'infra_trans_via_navegavel'::text AS ft,
    count(*) AS num
   FROM public.infra_trans_via_navegavel
UNION
 SELECT 'Unidades administrativas'::text AS th,
    'fronteira'::text AS ft,
    count(*) AS num
   FROM public.fronteira
UNION
SELECT 'Hidrografia'::text AS th,
    'constru_na_margem'::text AS ft,
    count(*) AS num
   FROM constru_na_margem
UNION
SELECT 'Construções'::text AS th,
    'numero_policia'::text AS ft,
    count(*) AS num
   FROM numero_policia
UNION
 SELECT 'Infraestruturas e serviços de interesse público'::text AS th,
    'oleoduto_gasoduto_subtancias_quimicas'::text AS ft,
    count(*) AS num
   FROM public.oleoduto_gasoduto_subtancias_quimicas)
SELECT th, ft, num from p order by th, ft;
