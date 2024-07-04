-- CartTop 2.0
-- valida em área os objetos poligonais em 3D. Medição com a função ST_Area combinada com ST_Force2D.
-- NdD1: valor mínimo 4 metros quadrados.

SELECT agua_lentica.identificador,
    public.st_area(public.st_force2d(agua_lentica.geometria)) AS st_area,
    public.st_setsrid((agua_lentica.geometria)::public.geometry(PolygonZ), 3763) AS geom,
    'agua_lentica'::text AS ft
   FROM public.agua_lentica
  WHERE (public.st_area(public.st_force2d(agua_lentica.geometria)) < (4)::double precision)
UNION
 SELECT curso_de_agua_area.identificador,
    public.st_area(public.st_force2d(curso_de_agua_area.geometria)) AS st_area,
    public.st_setsrid((curso_de_agua_area.geometria)::public.geometry(PolygonZ), 3763) AS geom,
    'curso_de_agua_area'::text AS ft
   FROM public.curso_de_agua_area
  WHERE (public.st_area(public.st_force2d(curso_de_agua_area.geometria)) < (4)::double precision)
UNION
 SELECT zona_humida.identificador,
    public.st_area(public.st_force2d(zona_humida.geometria)) AS st_area,
    public.st_setsrid((zona_humida.geometria)::public.geometry(PolygonZ), 3763) AS geom,
    'zona_humida'::text AS ft
   FROM public.zona_humida
  WHERE (public.st_area(public.st_force2d(zona_humida.geometria)) < (4)::double precision)
UNION
 SELECT obra_arte.identificador,
    public.st_area(public.st_force2d(obra_arte.geometria)) AS st_area,
    public.st_setsrid((obra_arte.geometria)::public.geometry(PolygonZ), 3763) AS geom,
    'obra_arte'::text AS ft
   FROM public.obra_arte
  WHERE (public.st_area(public.st_force2d(obra_arte.geometria)) < (4)::double precision);
