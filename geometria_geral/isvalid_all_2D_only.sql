-- Test if an ST_Geometry value is well-formed in 2D according to the OGC rules. 2D polygons only.

SELECT area_trabalho.identificador,
    public.st_isvalidreason(area_trabalho.geometria) AS st_isvalidreason,
    public.st_setsrid((area_trabalho.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_trabalho'::text AS ft
   FROM public.area_trabalho
  WHERE (NOT public.st_isvalid(area_trabalho.geometria))
UNION
 SELECT constru_polig.identificador,
    public.st_isvalidreason(constru_polig.geometria) AS st_isvalidreason,
    public.st_setsrid((constru_polig.geometria)::public.geometry(Polygon), 3763) AS geom,
    'constru_polig'::text AS ft
   FROM public.constru_polig
  WHERE (NOT public.st_isvalid(constru_polig.geometria))
UNION
 SELECT edificio.identificador,
    public.st_isvalidreason(edificio.geometria) AS st_isvalidreason,
    public.st_setsrid((edificio.geometria)::public.geometry(Polygon), 3763) AS geom,
    'edificio'::text AS ft
   FROM public.edificio
  WHERE (NOT public.st_isvalid(edificio.geometria))
UNION
 SELECT ponto_interesse.identificador,
    public.st_isvalidreason(ponto_interesse.geometria) AS st_isvalidreason,
    public.st_setsrid((ponto_interesse.geometria)::public.geometry(Polygon), 3763) AS geom,
    'ponto_interesse'::text AS ft
   FROM public.ponto_interesse
  WHERE (NOT public.st_isvalid(ponto_interesse.geometria))
UNION
 SELECT barreira.identificador,
    public.st_isvalidreason(barreira.geometria) AS st_isvalidreason,
    public.st_setsrid((barreira.geometria)::public.geometry(Polygon), 3763) AS geom,
    'barreira'::text AS ft
   FROM public.barreira
  WHERE (NOT public.st_isvalid(barreira.geometria))
UNION
 SELECT margem.identificador,
    public.st_isvalidreason(margem.geometria) AS st_isvalidreason,
    public.st_setsrid((margem.geometria)::public.geometry(Polygon), 3763) AS geom,
    'margem'::text AS ft
   FROM public.margem
  WHERE (NOT public.st_isvalid(margem.geometria))
UNION
 SELECT elem_assoc_agua.identificador,
    public.st_isvalidreason(elem_assoc_agua.geometria) AS st_isvalidreason,
    public.st_setsrid((elem_assoc_agua.geometria)::public.geometry(Polygon), 3763) AS geom,
    'elem_assoc_agua'::text AS ft
   FROM public.elem_assoc_agua
  WHERE (NOT public.st_isvalid(elem_assoc_agua.geometria))
UNION
 SELECT elem_assoc_eletricidade.identificador,
    public.st_isvalidreason(elem_assoc_eletricidade.geometria) AS st_isvalidreason,
    public.st_setsrid((elem_assoc_eletricidade.geometria)::public.geometry(Polygon), 3763) AS geom,
    'elem_assoc_eletricidade'::text AS ft
   FROM public.elem_assoc_eletricidade
  WHERE (NOT public.st_isvalid(elem_assoc_eletricidade.geometria))
UNION
 SELECT mob_urbano_sinal.identificador,
    public.st_isvalidreason(mob_urbano_sinal.geometria) AS st_isvalidreason,
    public.st_setsrid((mob_urbano_sinal.geometria)::public.geometry(Polygon), 3763) AS geom,
    'mob_urbano_sinal'::text AS ft
   FROM public.mob_urbano_sinal
  WHERE (NOT public.st_isvalid(mob_urbano_sinal.geometria))
UNION
 SELECT area_agricola_florestal_mato.identificador,
    public.st_isvalidreason(area_agricola_florestal_mato.geometria) AS st_isvalidreason,
    public.st_setsrid((area_agricola_florestal_mato.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_agricola_florestal_mato'::text AS ft
   FROM public.area_agricola_florestal_mato
  WHERE (NOT public.st_isvalid(area_agricola_florestal_mato.geometria))
UNION
 SELECT areas_artificializadas.identificador,
    public.st_isvalidreason(areas_artificializadas.geometria) AS st_isvalidreason,
    public.st_setsrid((areas_artificializadas.geometria)::public.geometry(Polygon), 3763) AS geom,
    'areas_artificializadas'::text AS ft
   FROM public.areas_artificializadas
  WHERE (NOT public.st_isvalid(areas_artificializadas.geometria))
UNION
 SELECT area_infra_trans_aereo.identificador,
    public.st_isvalidreason(area_infra_trans_aereo.geometria) AS st_isvalidreason,
    public.st_setsrid((area_infra_trans_aereo.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_aereo'::text AS ft
   FROM public.area_infra_trans_aereo
  WHERE (NOT public.st_isvalid(area_infra_trans_aereo.geometria))
UNION
 SELECT area_infra_trans_ferrov.identificador,
    public.st_isvalidreason(area_infra_trans_ferrov.geometria) AS st_isvalidreason,
    public.st_setsrid((area_infra_trans_ferrov.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_ferrov'::text AS ft
   FROM public.area_infra_trans_ferrov
  WHERE (NOT public.st_isvalid(area_infra_trans_ferrov.geometria))
UNION
 SELECT area_infra_trans_cabo.identificador,
    public.st_isvalidreason(area_infra_trans_cabo.geometria) AS st_isvalidreason,
    public.st_setsrid((area_infra_trans_cabo.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_cabo'::text AS ft
   FROM public.area_infra_trans_cabo
  WHERE (NOT public.st_isvalid(area_infra_trans_cabo.geometria))
UNION
 SELECT area_infra_trans_via_navegavel.identificador,
    public.st_isvalidreason(area_infra_trans_via_navegavel.geometria) AS st_isvalidreason,
    public.st_setsrid((area_infra_trans_via_navegavel.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_via_navegavel'::text AS ft
   FROM public.area_infra_trans_via_navegavel
  WHERE (NOT public.st_isvalid(area_infra_trans_via_navegavel.geometria))
UNION
 SELECT area_infra_trans_rodov.identificador,
    public.st_isvalidreason(area_infra_trans_rodov.geometria) AS st_isvalidreason,
    public.st_setsrid((area_infra_trans_rodov.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_rodov'::text AS ft
   FROM public.area_infra_trans_rodov
  WHERE (NOT public.st_isvalid(area_infra_trans_rodov.geometria));
