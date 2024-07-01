-- CartTop 2.0 
-- Valida em area os objectos poligonais em 2D. Medição com a função ST_Area.
-- NdD1: Valor mínimo 4 metros quadrados.
-- Aplica-se também a regra específica RE 7.1: área  da área agrícola, florestal ou mato superior a 2000 m2.


SELECT area_trabalho.identificador,
    public.st_area(area_trabalho.geometria) AS st_area,
    public.st_setsrid((area_trabalho.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_trabalho'::text AS ft
   FROM public.area_trabalho
  WHERE (public.st_area(area_trabalho.geometria) < (4)::double precision)
UNION
 SELECT terreno_marginal.identificador,
    public.st_area(terreno_marginal.geometria) AS st_area,
    public.st_setsrid((terreno_marginal.geometria)::public.geometry(Polygon), 3763) AS geom,
    'terreno_marginal'::text AS ft
   FROM public.terreno_marginal
  WHERE ((public.st_area(terreno_marginal.geometria) < (4)::double precision) AND (public.st_geometrytype(terreno_marginal.geometria) = 'ST_Polygon'::text))
UNION
 SELECT area_agricola_florestal_mato.identificador,
    public.st_area(area_agricola_florestal_mato.geometria) AS st_area,
    public.st_setsrid((area_agricola_florestal_mato.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_agricola_florestal_mato'::text AS ft
   FROM public.area_agricola_florestal_mato
  WHERE (public.st_area(area_agricola_florestal_mato.geometria) < (2000)::double precision)
UNION
 SELECT areas_artificializadas.identificador,
    public.st_area(areas_artificializadas.geometria) AS st_area,
    public.st_setsrid((areas_artificializadas.geometria)::public.geometry(Polygon), 3763) AS geom,
    'areas_artificializadas'::text AS ft
   FROM public.areas_artificializadas
  WHERE (public.st_area(areas_artificializadas.geometria) < (4)::double precision)
UNION
 SELECT area_infra_trans_aereo.identificador,
    public.st_area(area_infra_trans_aereo.geometria) AS st_area,
    public.st_setsrid((area_infra_trans_aereo.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_aereo'::text AS ft
   FROM public.area_infra_trans_aereo
  WHERE (public.st_area(area_infra_trans_aereo.geometria) < (4)::double precision)
UNION
 SELECT area_infra_trans_ferrov.identificador,
    public.st_area(area_infra_trans_ferrov.geometria) AS st_area,
    public.st_setsrid((area_infra_trans_ferrov.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_ferrov'::text AS ft
   FROM public.area_infra_trans_ferrov
  WHERE (public.st_area(area_infra_trans_ferrov.geometria) < (4)::double precision)
UNION
 SELECT area_infra_trans_cabo.identificador,
    public.st_area(area_infra_trans_cabo.geometria) AS st_area,
    public.st_setsrid((area_infra_trans_cabo.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_cabo'::text AS ft
   FROM public.area_infra_trans_cabo
  WHERE (public.st_area(area_infra_trans_cabo.geometria) < (4)::double precision)
UNION
 SELECT area_infra_trans_via_navegavel.identificador,
    public.st_area(area_infra_trans_via_navegavel.geometria) AS st_area,
    public.st_setsrid((area_infra_trans_via_navegavel.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_via_navegavel'::text AS ft
   FROM public.area_infra_trans_via_navegavel
  WHERE (public.st_area(area_infra_trans_via_navegavel.geometria) < (4)::double precision)
UNION
 SELECT area_infra_trans_rodov.identificador,
    public.st_area(area_infra_trans_rodov.geometria) AS st_area,
    public.st_setsrid((area_infra_trans_rodov.geometria)::public.geometry(Polygon), 3763) AS geom,
    'area_infra_trans_rodov'::text AS ft
   FROM public.area_infra_trans_rodov
  WHERE (public.st_area(area_infra_trans_rodov.geometria) < (4)::double precision);
