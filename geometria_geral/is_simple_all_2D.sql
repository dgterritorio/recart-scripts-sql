-- CartTop 2.0
-- Returns true if this Geometry has no anomalous geometric points, such as self intersection or self tangency
-- A LINESTRING is simple if it does not pass through the same POINT twice (except for the endpoints,
-- in which case it is referred to as a linear ring and additionally considered closed).

SELECT barreira.identificador,
    public.st_setsrid((barreira.geometria)::public.geometry(LineString), 3763) AS geom,
    'barreira'::text AS ft
   FROM public.barreira
  WHERE (NOT public.st_issimple(barreira.geometria))
UNION
 SELECT fronteira_terra_agua.identificador,
    public.st_setsrid((fronteira_terra_agua.geometria)::public.geometry(LineString), 3763) AS geom,
    'fronteira_terra_agua'::text AS ft
   FROM public.fronteira_terra_agua
  WHERE (NOT public.st_issimple(fronteira_terra_agua.geometria))
UNION
 SELECT constru_linear.identificador,
    public.st_setsrid((constru_linear.geometria)::public.geometry(LineString), 3763) AS geom,
    'constru_linear'::text AS ft
   FROM public.constru_linear
  WHERE (NOT public.st_issimple(constru_linear.geometria))
UNION
 SELECT cabo_electrico.identificador,
    public.st_setsrid((cabo_electrico.geometria)::public.geometry(LineString), 3763) AS geom,
    'cabo_electrico'::text AS ft
   FROM public.cabo_electrico
  WHERE (NOT public.st_issimple(cabo_electrico.geometria))
UNION
 SELECT conduta_de_agua.identificador,
    public.st_setsrid((conduta_de_agua.geometria)::public.geometry(LineString), 3763) AS geom,
    'conduta_de_agua'::text AS ft
   FROM public.conduta_de_agua
  WHERE (NOT public.st_issimple(conduta_de_agua.geometria));
