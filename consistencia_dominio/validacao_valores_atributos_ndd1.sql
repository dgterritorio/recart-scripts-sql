-- Carttop 2.0

-- valida os códigos dos valores dos atributos para o NdD1. Apresenta os valores errados.


SELECT 'ALTIMETRIA'::text AS tema,
    'CurvaDeNivel'::text AS objeto,
    curva_de_nivel.identificador AS id,
    'valorTipoCurva'::text AS atributo,
    curva_de_nivel.valor_tipo_curva AS erro
   FROM public.curva_de_nivel
  WHERE ((curva_de_nivel.valor_tipo_curva)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text]))
UNION
 SELECT 'ALTIMETRIA'::text AS tema,
    'LinhaDeQuebra'::text AS objeto,
    linha_de_quebra.identificador AS id,
    'valorClassifica'::text AS atributo,
    linha_de_quebra.valor_classifica AS erro
   FROM public.linha_de_quebra
  WHERE ((linha_de_quebra.valor_classifica)::text <> ALL (ARRAY[('1'::character varying)::text, ('6'::character varying)::text]))
UNION
 SELECT 'ALTIMETRIA'::text AS tema,
    'LinhaDeQuebra'::text AS objeto,
    linha_de_quebra.identificador AS id,
    'valorNaturezaLinha'::text AS atributo,
    linha_de_quebra.valor_natureza_linha AS erro
   FROM public.linha_de_quebra
  WHERE ((linha_de_quebra.valor_natureza_linha)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text]))
UNION
 SELECT 'ALTIMETRIA'::text AS tema,
    'PontoCotado'::text AS objeto,
    ponto_cotado.identificador AS id,
    'valorClassificaLAS'::text AS atributo,
    ponto_cotado.valor_classifica_las AS erro
   FROM public.ponto_cotado
  WHERE ((ponto_cotado.valor_classifica_las)::text <> '1'::text)
UNION
SELECT 'AUXILIAR'::text AS tema,
   'AreaTrabalho'::text AS objeto,
   area_trabalho.identificador AS id,
   'valorNivelDeDetalhe'::text AS atributo,
   area_trabalho.valor_nivel_de_detalhe AS erro
  FROM public.area_trabalho
 WHERE ((area_trabalho.valor_nivel_de_detalhe)::text <> '1'::text)
UNION
 SELECT 'CONSTRUÇÕES'::text AS tema,
    'ConstruLinear'::text AS objeto,
    constru_linear.identificador AS id,
    'valorConstrucaoLinear'::text AS atributo,
    constru_linear.valor_construcao_linear AS erro
   FROM public.constru_linear
  WHERE ((constru_linear.valor_construcao_linear)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text, ('11'::character varying)::text]))
UNION
 SELECT 'CONSTRUÇÕES'::text AS tema,
    'ConstruPolig'::text AS objeto,
    constru_polig.identificador AS id,
    'valorTipoConstrucao'::text AS atributo,
    constru_polig.valor_tipo_construcao AS erro
   FROM public.constru_polig
  WHERE ((constru_polig.valor_tipo_construcao)::text <> ALL (ARRAY[('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text, ('10'::character varying)::text, ('11'::character varying)::text, ('12'::character varying)::text]))
UNION
 SELECT 'CONSTRUÇÕES'::text AS tema,
    'Edificio'::text AS objeto,
    edificio.identificador AS id,
    'valorCondicaoConst'::text AS atributo,
    edificio.valor_condicao_const AS erro
   FROM public.edificio
  WHERE ((edificio.valor_condicao_const)::text <> ALL (ARRAY[('3'::character varying)::text, ('5'::character varying)::text]))
UNION
 SELECT 'CONSTRUÇÕES'::text AS tema,
    'Edificio'::text AS objeto,
    edificio.identificador AS id,
    'valorElementoEdificioXY'::text AS atributo,
    edificio.valor_elemento_edificio_xy AS erro
   FROM public.edificio
  WHERE ((edificio.valor_elemento_edificio_xy)::text <> ALL (ARRAY[('4'::character varying)::text, ('6'::character varying)::text, ('14'::character varying)::text]))
UNION
 SELECT 'CONSTRUÇÕES'::text AS tema,
    'Edificio'::text AS objeto,
    edificio.identificador AS id,
    'valorElementoEdificioZ'::text AS atributo,
    edificio.valor_elemento_edificio_z AS erro
   FROM public.edificio
  WHERE ((edificio.valor_elemento_edificio_z)::text <> '14'::text)
UNION
 SELECT 'CONSTRUÇÕES'::text AS tema,
    'Edificio'::text AS objeto,
    edificio.identificador AS id,
    'valorFormaEdificio'::text AS atributo,
    edificio.valor_forma_edificio AS erro
   FROM public.edificio
  WHERE ((edificio.valor_forma_edificio)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text, ('9'::character varying)::text, ('10'::character varying)::text, ('11'::character varying)::text, ('12'::character varying)::text, ('13'::character varying)::text, ('14'::character varying)::text, ('15'::character varying)::text, ('16'::character varying)::text, ('17'::character varying)::text, ('18'::character varying)::text, ('19'::character varying)::text, ('20'::character varying)::text, ('21'::character varying)::text, ('22'::character varying)::text, ('23'::character varying)::text, ('24'::character varying)::text, ('25'::character varying)::text, ('26'::character varying)::text, ('27'::character varying)::text, ('28'::character varying)::text, ('29'::character varying)::text, ('30'::character varying)::text, ('31'::character varying)::text, ('32'::character varying)::text, ('33'::character varying)::text, ('34'::character varying)::text, ('35'::character varying)::text]))
UNION
 SELECT 'CONSTRUÇÕES'::text AS tema,
    'Edificio'::text AS objeto,
    edificio.identificador AS id,
    'valorUtilizacaoAtual'::text AS atributo,
    lig_valor_utilizacao_atual_edificio.valor_utilizacao_atual_id AS erro
   FROM (public.edificio
     JOIN public.lig_valor_utilizacao_atual_edificio ON (((edificio.identificador = lig_valor_utilizacao_atual_edificio.edificio_id) AND ((lig_valor_utilizacao_atual_edificio.valor_utilizacao_atual_id)::text <> ALL (ARRAY[('1.1'::character varying)::text, ('1.2'::character varying)::text, ('2.1'::character varying)::text, ('2.2'::character varying)::text, ('2.3'::character varying)::text, ('3'::character varying)::text, ('4.1'::character varying)::text, ('4.2'::character varying)::text, ('4.3'::character varying)::text, ('4.4'::character varying)::text, ('4.5'::character varying)::text, ('5.1'::character varying)::text, ('5.2'::character varying)::text, ('5.3'::character varying)::text, ('6.1.1'::character varying)::text, ('6.1.2'::character varying)::text, ('6.2.1'::character varying)::text, ('6.2.2'::character varying)::text, ('6.3.1'::character varying)::text, ('6.3.2'::character varying)::text, ('6.4.1'::character varying)::text, ('6.4.2'::character varying)::text, ('6.4.3'::character varying)::text, ('6.5'::character varying)::text, ('6.6'::character varying)::text, ('7.1'::character varying)::text, ('7.2'::character varying)::text, ('7.3'::character varying)::text, ('8.1'::character varying)::text, ('8.2'::character varying)::text, ('8.3'::character varying)::text, ('8.4'::character varying)::text, ('9'::character varying)::text])))))
UNION
 SELECT 'CONSTRUÇÕES'::text AS tema,
    'PontoInteresse'::text AS objeto,
    ponto_interesse.identificador AS id,
    'valorTipoPontoInteresse'::text AS atributo,
    ponto_interesse.valor_tipo_ponto_interesse AS erro
   FROM public.ponto_interesse
  WHERE ((ponto_interesse.valor_tipo_ponto_interesse)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text, ('9'::character varying)::text, ('10'::character varying)::text, ('11'::character varying)::text, ('12'::character varying)::text, ('13'::character varying)::text]))
UNION
SELECT 'CONSTRUÇÕES'::text AS tema,
   'SinalGeodesico'::text AS objeto,
   sinal_geodesico.identificador AS id,
   'valorCategoria'::text AS atributo,
   sinal_geodesico.valor_categoria AS erro
  FROM public.sinal_geodesico
 WHERE ((sinal_geodesico.valor_categoria)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('995'::character varying)::text]))
UNION
SELECT 'CONSTRUÇÕES'::text AS tema,
   'SinalGeodesico'::text AS objeto,
   sinal_geodesico.identificador AS id,
   'valorTipoSinalGeodesico'::text AS atributo,
   sinal_geodesico.valor_tipo_sinal_geodesico AS erro
  FROM public.sinal_geodesico
 WHERE ((sinal_geodesico.valor_tipo_sinal_geodesico)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text]))
UNION
 SELECT 'HIDROGRAFIA'::text AS tema,
    'AguaLentica'::text AS objeto,
    agua_lentica.identificador AS id,
    'valorAguaLentica'::text AS atributo,
    agua_lentica.valor_agua_lentica AS erro
   FROM public.agua_lentica
  WHERE ((agua_lentica.valor_agua_lentica)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text]))
UNION
SELECT 'HIDROGRAFIA'::text AS tema,
   'ConstruNaMargem'::text AS objeto,
   constru_na_margem.identificador AS id,
   'valorTipoConstMargem'::text AS atributo,
   constru_na_margem.valor_tipo_const_margem AS erro
  FROM public.constru_na_margem
 WHERE ((constru_na_margem.valor_tipo_const_margem)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text]))
UNION
SELECT 'HIDROGRAFIA'::text AS tema,
   'Barreira'::text AS objeto,
   barreira.identificador AS id,
   'valorBarreira'::text AS atributo,
   barreira.valor_barreira AS erro
  FROM public.barreira
 WHERE ((barreira.valor_barreira)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text]))
UNION
 SELECT 'HIDROGRAFIA'::text AS tema,
    'CursoDeAguaEixo'::text AS objeto,
    curso_de_agua_eixo.identificador AS id,
    'valorCursoDeAgua'::text AS atributo,
    curso_de_agua_eixo.valor_curso_de_agua AS erro
   FROM public.curso_de_agua_eixo
  WHERE ((curso_de_agua_eixo.valor_curso_de_agua)::text <> ALL (ARRAY[('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text]))
UNION
SELECT 'HIDROGRAFIA'::text AS tema,
   'CursoDeAguaEixo'::text AS objeto,
   curso_de_agua_eixo.identificador AS id,
   'valorNatureza'::text AS atributo,
   curso_de_agua_eixo.valor_natureza AS erro
  FROM public.curso_de_agua_eixo
 WHERE ((curso_de_agua_eixo.valor_natureza)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text]))
UNION
 SELECT 'HIDROGRAFIA'::text AS tema,
    'CursoDeAguaEixo'::text AS objeto,
    curso_de_agua_eixo.identificador AS id,
    'valorPosicaoVertical'::text AS atributo,
    curso_de_agua_eixo.valor_posicao_vertical AS erro
   FROM public.curso_de_agua_eixo
  WHERE ((curso_de_agua_eixo.valor_posicao_vertical)::text <> ALL (ARRAY[('1'::character varying)::text, ('0'::character varying)::text, ('-1'::character varying)::text]))
UNION
SELECT 'HIDROGRAFIA'::text AS tema,
   'Terreno Marginal'::text AS objeto,
   terreno_marginal.identificador AS id,
   'valorTipoTerrenoMarginal'::text AS atributo,
   terreno_marginal.valor_tipo_terreno_marginal AS erro
  FROM public.terreno_marginal
 WHERE ((terreno_marginal.valor_tipo_terreno_marginal)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text]))
UNION
 SELECT 'HIDROGRAFIA'::text AS tema,
    'NoHidrografico'::text AS objeto,
    no_hidrografico.identificador AS id,
    'valorTipoNoHidrografico'::text AS atributo,
    no_hidrografico.valor_tipo_no_hidrografico AS erro
   FROM public.no_hidrografico
  WHERE ((no_hidrografico.valor_tipo_no_hidrografico)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text]))
UNION
SELECT 'HIDROGRAFIA'::text AS tema,
   'ZonaHumida'::text AS objeto,
   zona_humida.identificador AS id,
   'valorZonaHumida'::text AS atributo,
   zona_humida.valor_zona_humida AS erro
  FROM public.zona_humida
 WHERE ((zona_humida.valor_zona_humida)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text]))
UNION
SELECT 'HIDROGRAFIA'::text AS tema,
   'FronteiraTerraAgua'::text AS objeto,
   fronteira_terra_agua.identificador AS id,
   'valorTipoFronteiraTerraAgua'::text AS atributo,
   fronteira_terra_agua.valor_tipo_fronteira_terra_agua AS erro
  FROM public.fronteira_terra_agua
 WHERE ((fronteira_terra_agua.valor_tipo_fronteira_terra_agua)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'AdmPublica'::text AS objeto,
    adm_publica.identificador AS id,
    'valorTipoAdmPublica'::text AS atributo,
    adm_publica.valor_tipo_adm_publica AS erro
   FROM public.adm_publica
  WHERE ((adm_publica.valor_tipo_adm_publica)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'CaboElectrico'::text AS objeto,
    cabo_electrico.identificador AS id,
    'valorDesignacaoTensao'::text AS atributo,
    cabo_electrico.valor_designacao_tensao AS erro
   FROM public.cabo_electrico
  WHERE ((cabo_electrico.valor_designacao_tensao)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'CaboElectrico'::text AS objeto,
    cabo_electrico.identificador AS id,
    'valorPosicaoVertical'::text AS atributo,
    cabo_electrico.valor_posicao_vertical AS erro
   FROM public.cabo_electrico
  WHERE ((cabo_electrico.valor_posicao_vertical)::text <> ALL (ARRAY[('1'::character varying)::text, ('0'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'CondutaDeAgua'::text AS objeto,
    conduta_de_agua.identificador AS id,
    'valorCondutaAgua'::text AS atributo,
    conduta_de_agua.valor_conduta_agua AS erro
   FROM public.conduta_de_agua
  WHERE ((conduta_de_agua.valor_conduta_agua)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'CondutaDeAgua'::text AS objeto,
    conduta_de_agua.identificador AS id,
    'valorPosicaoVertical'::text AS atributo,
    conduta_de_agua.valor_posicao_vertical AS erro
   FROM public.conduta_de_agua
  WHERE ((conduta_de_agua.valor_posicao_vertical)::text <> ALL (ARRAY[('1'::character varying)::text, ('0'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'ElemAssocAgua'::text AS objeto,
    elem_assoc_agua.identificador AS id,
    'valorElementoAssociadoAgua'::text AS atributo,
    elem_assoc_agua.valor_elemento_associado_agua AS erro
   FROM public.elem_assoc_agua
  WHERE ((elem_assoc_agua.valor_elemento_associado_agua)::text <> ALL (ARRAY[('2.1'::character varying)::text, ('2.2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('7.1'::character varying)::text, ('7.2'::character varying)::text, ('8'::character varying)::text, ('9'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'ElemAssocEletricidade'::text AS objeto,
    elem_assoc_eletricidade.identificador AS id,
    'valorElementoAssociadoElectricidade'::text AS atributo,
    elem_assoc_eletricidade.valor_elemento_associado_electricidade AS erro
   FROM public.elem_assoc_eletricidade
  WHERE ((elem_assoc_eletricidade.valor_elemento_associado_electricidade)::text <> ALL (ARRAY[('1.1'::character varying)::text, ('1.2'::character varying)::text, ('1.3'::character varying)::text, ('1.4'::character varying)::text, ('1.5'::character varying)::text, ('1.6'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6.1'::character varying)::text, ('6.2'::character varying)::text, ('6.3'::character varying)::text, ('7.1'::character varying)::text, ('7.2'::character varying)::text, ('7.3'::character varying)::text, ('7.4'::character varying)::text, ('8'::character varying)::text, ('9'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'ElemAssocPGQ'::text AS objeto,
    elem_assoc_pgq.identificador AS id,
    'valorElementoAssociadoPGQ'::text AS atributo,
    elem_assoc_pgq.valor_elemento_associado_pgq AS erro
   FROM public.elem_assoc_pgq
  WHERE ((elem_assoc_pgq.valor_elemento_associado_pgq)::text <> ALL (ARRAY[('1'::character varying)::text, ('2.1'::character varying)::text, ('2.2'::character varying)::text, ('2.3'::character varying)::text, ('2.4'::character varying)::text, ('2.100'::character varying)::text, ('3'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'ElemAssocTelecomunicacoes'::text AS objeto,
    elem_assoc_telecomunicacoes.identificador AS id,
    'valorElementoAssociadoTelecomunicacoes'::text AS atributo,
    elem_assoc_telecomunicacoes.valor_elemento_associado_telecomunicacoes AS erro
   FROM public.elem_assoc_telecomunicacoes
  WHERE ((elem_assoc_telecomunicacoes.valor_elemento_associado_telecomunicacoes)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'EquipUtilColetiva'::text AS objeto,
    equip_util_coletiva.identificador AS id,
    'valorTipoEquipamentoColetivo'::text AS atributo,
    lig_valor_tipo_equipamento_coletivo_equip_util_coletiva.valor_tipo_equipamento_coletivo_id AS erro
   FROM (public.equip_util_coletiva
     JOIN public.lig_valor_tipo_equipamento_coletivo_equip_util_coletiva ON ((equip_util_coletiva.identificador = lig_valor_tipo_equipamento_coletivo_equip_util_coletiva.equip_util_coletiva_id)))
  WHERE ((lig_valor_tipo_equipamento_coletivo_equip_util_coletiva.valor_tipo_equipamento_coletivo_id)::text <> ALL (ARRAY[('1.1'::character varying)::text, ('1.2'::character varying)::text, ('1.3'::character varying)::text, ('1.4'::character varying)::text, ('1.5'::character varying)::text, ('2.1'::character varying)::text, ('2.2'::character varying)::text, ('2.100'::character varying)::text, ('3'::character varying)::text, ('4.1'::character varying)::text, ('4.2'::character varying)::text, ('5'::character varying)::text, ('6.1'::character varying)::text, ('6.2'::character varying)::text, ('7.1'::character varying)::text, ('7.2'::character varying)::text, ('7.3'::character varying)::text, ('7.4'::character varying)::text, ('7.5'::character varying)::text, ('8'::character varying)::text, ('9'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'InstProducao'::text AS objeto,
    inst_producao.identificador AS id,
    'valorInstalacaoProducao'::text AS atributo,
    inst_producao.valor_instalacao_producao AS erro
   FROM public.inst_producao
  WHERE ((inst_producao.valor_instalacao_producao)::text <> ALL (ARRAY[('1.1'::character varying)::text, ('1.2'::character varying)::text, ('1.3'::character varying)::text, ('1.100'::character varying)::text, ('2'::character varying)::text, ('4.1'::character varying)::text, ('4.2'::character varying)::text, ('4.4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7.1'::character varying)::text, ('7.2'::character varying)::text, ('7.3'::character varying)::text, ('8'::character varying)::text, ('11'::character varying)::text, ('12'::character varying)::text, ('13.1'::character varying)::text, ('13.2'::character varying)::text, ('13.3'::character varying)::text, ('13.4'::character varying)::text, ('13.5'::character varying)::text, ('13.100'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'OleodutoGasodutoSubtanciasQuimicas'::text AS objeto,
    oleoduto_gasoduto_subtancias_quimicas.identificador AS id,
    'valorGasodutoOleodutoSubQuimicas'::text AS atributo,
    oleoduto_gasoduto_subtancias_quimicas.valor_gasoduto_oleoduto_sub_quimicas AS erro
   FROM public.oleoduto_gasoduto_subtancias_quimicas
  WHERE ((oleoduto_gasoduto_subtancias_quimicas.valor_gasoduto_oleoduto_sub_quimicas)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text]))
UNION
 SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
    'OleodutoGasodutoSubtanciasQuimicas'::text AS objeto,
    oleoduto_gasoduto_subtancias_quimicas.identificador AS id,
    'valorPosicaoVertical'::text AS atributo,
    oleoduto_gasoduto_subtancias_quimicas.valor_posicao_vertical AS erro
   FROM public.oleoduto_gasoduto_subtancias_quimicas
  WHERE ((oleoduto_gasoduto_subtancias_quimicas.valor_posicao_vertical)::text <> ALL (ARRAY[('1'::character varying)::text, ('0'::character varying)::text]))
UNION
SELECT 'INFRAESTRUTURAS E SERVIÇOS DE INTERESSE PÚBLICO'::text AS tema,
   'InstGestaoAmbiental'::text AS objeto,
   inst_gestao_ambiental.identificador AS id,
   'valorInstalacaoDeGestaoAmbiental'::text AS atributo,
   inst_gestao_ambiental.valor_instalacao_gestao_ambiental AS erro
  FROM public.inst_gestao_ambiental
 WHERE ((inst_gestao_ambiental.valor_instalacao_gestao_ambiental)::text <> ALL (ARRAY[('1.1'::character varying)::text, ('1.2'::character varying)::text, ('2.1'::character varying)::text, ('2.2'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text]))
UNION
 SELECT 'OCUPAÇÃO DO SOLO'::text AS tema,
    'AreaAgricolaFlorestalMato'::text AS objeto,
    area_agricola_florestal_mato.identificador AS id,
    'valorAreasAgricolasFlorestaisMatos'::text AS atributo,
    area_agricola_florestal_mato.valor_areas_agricolas_florestais_matos AS erro
   FROM public.area_agricola_florestal_mato
  WHERE ((area_agricola_florestal_mato.valor_areas_agricolas_florestais_matos)::text <> ALL (ARRAY[('1'::character varying)::text, ('2.1'::character varying)::text, ('2.2'::character varying)::text, ('3'::character varying)::text, ('4.1'::character varying)::text, ('4.2'::character varying)::text, ('5'::character varying)::text]))
UNION
 SELECT 'OCUPAÇÃO DO SOLO'::text AS tema,
    'AreasArtificializadas'::text AS objeto,
    areas_artificializadas.identificador AS id,
    'valorAreasArtificializadas'::text AS atributo,
    areas_artificializadas.valor_areas_artificializadas AS erro
   FROM public.areas_artificializadas
  WHERE ((areas_artificializadas.valor_areas_artificializadas)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text, ('9'::character varying)::text, ('10'::character varying)::text, ('11'::character varying)::text, ('12'::character varying)::text, ('13'::character varying)::text]))
UNION
 SELECT 'TOPONÍMIA'::text AS tema,
    'DesignacaoLocal'::text AS objeto,
    designacao_local.identificador AS id,
    'valorLocalNomeado'::text AS atributo,
    designacao_local.valor_local_nomeado AS erro
   FROM public.designacao_local
  WHERE ((designacao_local.valor_local_nomeado)::text <> ALL (ARRAY[('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6.1'::character varying)::text, ('6.2'::character varying)::text, ('6.3'::character varying)::text, ('6.4'::character varying)::text, ('6.5'::character varying)::text, ('6.6'::character varying)::text, ('6.7'::character varying)::text, ('6.8'::character varying)::text, ('6.9'::character varying)::text, ('6.10'::character varying)::text, ('6.11'::character varying)::text, ('6.12'::character varying)::text, ('6.13'::character varying)::text, ('7.1'::character varying)::text, ('7.2'::character varying)::text, ('7.3'::character varying)::text, ('8'::character varying)::text, ('9'::character varying)::text, ('10'::character varying)::text, ('11'::character varying)::text, ('12'::character varying)::text, ('13'::character varying)::text, ('14'::character varying)::text, ('15'::character varying)::text]))
UNION
SELECT 'UNIDADES ADMINISTRATIVAS'::text AS tema,
   'Fronteira'::text AS objeto,
   fronteira.identificador AS id,
   'valorEstadoFronteira'::text AS atributo,
   fronteira.valor_estado_fronteira AS erro
  FROM public.fronteira
 WHERE ((fronteira.valor_estado_fronteira)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte aéreo)'::text AS tema,
    'AreaInfraTransAereo'::text AS objeto,
    area_infra_trans_aereo.identificador AS id,
    'valorTipoAreaInfraTransAereo'::text AS atributo,
    area_infra_trans_aereo.valor_tipo_area_infra_trans_aereo AS erro
   FROM public.area_infra_trans_aereo
  WHERE ((area_infra_trans_aereo.valor_tipo_area_infra_trans_aereo)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte aéreo)'::text AS tema,
    'InfraTransAereo'::text AS objeto,
    infra_trans_aereo.identificador AS id,
    'valorCategoriaInfraTransAereo'::text AS atributo,
    infra_trans_aereo.valor_categoria_infra_trans_aereo AS erro
   FROM public.infra_trans_aereo
  WHERE ((infra_trans_aereo.valor_categoria_infra_trans_aereo)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte aéreo)'::text AS tema,
    'InfraTransAereo'::text AS objeto,
    infra_trans_aereo.identificador AS id,
    'valorRestricaoInfraTransAereo'::text AS atributo,
    infra_trans_aereo.valor_restricao_infra_trans_aereo AS erro
   FROM public.infra_trans_aereo
  WHERE ((infra_trans_aereo.valor_restricao_infra_trans_aereo)::text <> ALL (ARRAY[('1'::character varying)::text, ('995'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte aéreo)'::text AS tema,
    'InfraTransAereo'::text AS objeto,
    infra_trans_aereo.identificador AS id,
    'valorTipoInfraTransAereo'::text AS atributo,
    infra_trans_aereo.valor_tipo_infra_trans_aereo AS erro
   FROM public.infra_trans_aereo
  WHERE ((infra_trans_aereo.valor_tipo_infra_trans_aereo)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte ferroviário)'::text AS tema,
    'InfraTransFerrov'::text AS objeto,
    infra_trans_ferrov.identificador AS id,
    'valorTipoInfraTransFerrov'::text AS atributo,
    infra_trans_ferrov.valor_tipo_infra_trans_ferrov AS erro
   FROM public.infra_trans_ferrov
  WHERE ((infra_trans_ferrov.valor_tipo_infra_trans_ferrov)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte ferroviário)'::text AS tema,
    'NoTransFerrov'::text AS objeto,
    no_trans_ferrov.identificador AS id,
    'valorTipoNoTransFerrov'::text AS atributo,
    no_trans_ferrov.valor_tipo_no_trans_ferrov AS erro
   FROM public.no_trans_ferrov
  WHERE ((no_trans_ferrov.valor_tipo_no_trans_ferrov)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte ferroviário)'::text AS tema,
    'SegViaFerrea'::text AS objeto,
    seg_via_ferrea.identificador AS id,
    'valorCategoriaBitola'::text AS atributo,
    seg_via_ferrea.valor_categoria_bitola AS erro
   FROM public.seg_via_ferrea
  WHERE ((seg_via_ferrea.valor_categoria_bitola)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('995'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte ferroviário)'::text AS tema,
    'SegViaFerrea'::text AS objeto,
    seg_via_ferrea.identificador AS id,
    'valorEstadoLinhaFerrea'::text AS atributo,
    seg_via_ferrea.valor_estado_linha_ferrea AS erro
   FROM public.seg_via_ferrea
  WHERE ((seg_via_ferrea.valor_estado_linha_ferrea)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('5'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte ferroviário)'::text AS tema,
    'SegViaFerrea'::text AS objeto,
    seg_via_ferrea.identificador AS id,
    'valorPosicaoVerticalTransportes'::text AS atributo,
    seg_via_ferrea.valor_posicao_vertical_transportes AS erro
   FROM public.seg_via_ferrea
  WHERE ((seg_via_ferrea.valor_posicao_vertical_transportes)::text <> ALL (ARRAY[('3'::character varying)::text, ('2'::character varying)::text, ('1'::character varying)::text, ('0'::character varying)::text, ('-1'::character varying)::text, ('-2'::character varying)::text, ('-3'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte ferroviário)'::text AS tema,
    'SegViaFerrea'::text AS objeto,
    seg_via_ferrea.identificador AS id,
    'valorTipoLinhaFerrea'::text AS atributo,
    seg_via_ferrea.valor_tipo_linha_ferrea AS erro
   FROM public.seg_via_ferrea
  WHERE ((seg_via_ferrea.valor_tipo_linha_ferrea)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte ferroviário)'::text AS tema,
    'SegViaFerrea'::text AS objeto,
    seg_via_ferrea.identificador AS id,
    'valorTipoTrocoViaFerrea'::text AS atributo,
    seg_via_ferrea.valor_tipo_troco_via_ferrea AS erro
   FROM public.seg_via_ferrea
  WHERE ((seg_via_ferrea.valor_tipo_troco_via_ferrea)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte por via navegável)'::text AS tema,
    'AreaInfraTransViaNavegavel'::text AS objeto,
    area_infra_trans_via_navegavel.identificador AS id,
    'valorTipoAreaInfraTransViaNavegavel'::text AS atributo,
    area_infra_trans_via_navegavel.valor_tipo_area_infra_trans_via_navegavel AS erro
   FROM public.area_infra_trans_via_navegavel
  WHERE ((area_infra_trans_via_navegavel.valor_tipo_area_infra_trans_via_navegavel)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte por via navegável)'::text AS tema,
    'InfraTransViaNavegavel'::text AS objeto,
    infra_trans_via_navegavel.identificador AS id,
    'valorTipoInfraTransViaNavegavel'::text AS atributo,
    infra_trans_via_navegavel.valor_tipo_infra_trans_via_navegavel AS erro
   FROM public.infra_trans_via_navegavel
  WHERE ((infra_trans_via_navegavel.valor_tipo_infra_trans_via_navegavel)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
    'InfraTransRodov'::text AS objeto,
    infra_trans_rodov.identificador AS id,
    'valorTipoServico'::text AS atributo,
    lig_valor_tipo_servico_infra_trans_rodov.valor_tipo_servico_id AS erro
   FROM (public.infra_trans_rodov
     JOIN public.lig_valor_tipo_servico_infra_trans_rodov ON ((infra_trans_rodov.identificador = lig_valor_tipo_servico_infra_trans_rodov.infra_trans_rodov_id)))
  WHERE ((lig_valor_tipo_servico_infra_trans_rodov.valor_tipo_servico_id)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text, ('9'::character varying)::text, ('10'::character varying)::text, ('11'::character varying)::text, ('12'::character varying)::text, ('13'::character varying)::text, ('14'::character varying)::text, ('15'::character varying)::text, ('995'::character varying)::text]))
UNION
SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
   'InfraTransRodov'::text AS objeto,
   infra_trans_rodov.identificador AS id,
   'valorTipoInfraTransRodov'::text AS atributo,
   infra_trans_rodov.valor_tipo_infra_trans_rodov AS erro
  FROM public.infra_trans_rodov
 WHERE ((infra_trans_rodov.valor_tipo_infra_trans_rodov)::text <> ALL (ARRAY[('1'::character varying)::text,  ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text , ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text, ('9'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
    'NoTransRodov'::text AS objeto,
    no_trans_rodov.identificador AS id,
    'valorTipoNoTransRodov'::text AS atributo,
    no_trans_rodov.valor_tipo_no_trans_rodov AS erro
   FROM public.no_trans_rodov
  WHERE ((no_trans_rodov.valor_tipo_no_trans_rodov)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
    'SegViaRodov'::text AS objeto,
    seg_via_rodov.identificador AS id,
    'valorEstadoViaRodov'::text AS atributo,
    seg_via_rodov.valor_estado_via_rodov AS erro
   FROM public.seg_via_rodov
  WHERE ((seg_via_rodov.valor_estado_via_rodov)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('5'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
    'SegViaRodov'::text AS objeto,
    seg_via_rodov.identificador AS id,
    'valorCaractFisicaViaRodov'::text AS atributo,
    seg_via_rodov.valor_caract_fisica_rodov AS erro
   FROM public.seg_via_rodov
  WHERE ((seg_via_rodov.valor_caract_fisica_rodov)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
    'SegViaRodov'::text AS objeto,
    seg_via_rodov.identificador AS id,
    'valorPosicaoVerticalTransportes'::text AS atributo,
    seg_via_rodov.valor_posicao_vertical_transportes AS erro
   FROM public.seg_via_rodov
  WHERE ((seg_via_rodov.valor_posicao_vertical_transportes)::text <> ALL (ARRAY[('3'::character varying)::text, ('2'::character varying)::text, ('1'::character varying)::text, ('0'::character varying)::text, ('-1'::character varying)::text, ('-2'::character varying)::text, ('-3'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
    'SegViaRodov'::text AS objeto,
    seg_via_rodov.identificador AS id,
    'valorSentido'::text AS atributo,
    seg_via_rodov.valor_sentido AS erro
   FROM public.seg_via_rodov
  WHERE ((seg_via_rodov.valor_sentido)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text]))
UNION
SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
   'SegViaRodov'::text AS objeto,
   lig_valor_tipo_circulacao_seg_via_rodov.seg_via_rodov_id AS id,
   'valorTipoCirculacao'::text AS atributo,
   lig_valor_tipo_circulacao_seg_via_rodov.valor_tipo_circulacao_id AS erro
  FROM public.lig_valor_tipo_circulacao_seg_via_rodov
 WHERE ((lig_valor_tipo_circulacao_seg_via_rodov.valor_tipo_circulacao_id)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
    'SegViaRodov'::text AS objeto,
    seg_via_rodov.identificador AS id,
    'valorTipoTrocoRodoviario'::text AS atributo,
    seg_via_rodov.valor_tipo_troco_rodoviario AS erro
   FROM public.seg_via_rodov
  WHERE ((seg_via_rodov.valor_tipo_troco_rodoviario)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('8'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Transporte rodoviário)'::text AS tema,
    'ViaRodovLimite'::text AS objeto,
    via_rodov_limite.identificador AS id,
    'valorTipoLimite'::text AS atributo,
    via_rodov_limite.valor_tipo_limite AS erro
   FROM public.via_rodov_limite
  WHERE ((via_rodov_limite.valor_tipo_limite)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text]))
UNION
 SELECT 'TRANSPORTES (Obra de arte)'::text AS tema,
    'ObraArte'::text AS objeto,
    obra_arte.identificador AS id,
    'valorTipoObraArte'::text AS atributo,
    obra_arte.valor_tipo_obra_arte AS erro
   FROM public.obra_arte
  WHERE ((obra_arte.valor_tipo_obra_arte)::text <> ALL (ARRAY[('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text, ('6'::character varying)::text, ('7'::character varying)::text, ('9'::character varying)::text]));
