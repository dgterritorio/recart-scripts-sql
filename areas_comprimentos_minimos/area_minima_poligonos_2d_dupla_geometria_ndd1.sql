-- CartTop 2.0
-- Valida em area os objectos poligonais com dupla geometria em 2D. Medição com a função ST_Area.
-- NdD1: Valor mínimo 4 metros quadrados.

SELECT edificio.identificador,
    public.st_area(edificio.geometria) AS st_area,
    public.st_setsrid((edificio.geometria)::public.geometry(Polygon), 3763) AS geom,
    'edificio'::text AS ft
   FROM public.edificio
  WHERE ((public.st_area(edificio.geometria) < (4)::double precision) AND (public.st_geometrytype(edificio.geometria) = 'ST_Polygon'::text))
UNION
 SELECT ponto_interesse.identificador,
    public.st_area(ponto_interesse.geometria) AS st_area,
    public.st_setsrid((ponto_interesse.geometria)::public.geometry(Polygon), 3763) AS geom,
    'ponto_interesse'::text AS ft
   FROM public.ponto_interesse
  WHERE ((public.st_area(ponto_interesse.geometria) < (4)::double precision) AND (public.st_geometrytype(ponto_interesse.geometria) = 'ST_Polygon'::text))
UNION
 SELECT mob_urbano_sinal.identificador,
    public.st_area(mob_urbano_sinal.geometria) AS st_area,
    public.st_setsrid((mob_urbano_sinal.geometria)::public.geometry(Polygon), 3763) AS geom,
    'mob_urbano_sinal'::text AS ft
   FROM public.mob_urbano_sinal
  WHERE ((public.st_area(mob_urbano_sinal.geometria) < (4)::double precision) AND (public.st_geometrytype(mob_urbano_sinal.geometria) = 'ST_Polygon'::text));
