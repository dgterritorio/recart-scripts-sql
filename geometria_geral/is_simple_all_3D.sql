-- CartTop 2.0
-- Returns true if this Geometry has no anomalous geometric points, such as self intersection or self tangency
-- A LINESTRING is simple if it does not pass through the same POINT twice (except for the endpoints,
-- in which case it is referred to as a linear ring and additionally considered closed).

SELECT curva_de_nivel.identificador,
    public.st_setsrid((curva_de_nivel.geometria)::public.geometry(LineStringZ), 3763) AS geom,
    'curvas de nível'::text AS ft
   FROM public.curva_de_nivel
  WHERE (NOT public.st_issimple(curva_de_nivel.geometria))
UNION
 SELECT linha_de_quebra.identificador,
    public.st_setsrid((linha_de_quebra.geometria)::public.geometry(LineStringZ), 3763) AS geom,
    'linha de quebra'::text AS ft
   FROM public.linha_de_quebra
  WHERE (NOT public.st_issimple(linha_de_quebra.geometria))
UNION
 SELECT curso_de_agua_eixo.identificador,
    public.st_setsrid((curso_de_agua_eixo.geometria)::public.geometry(LineStringZ), 3763) AS geom,
    'curso_de_agua_eixo'::text AS ft
   FROM public.curso_de_agua_eixo
  WHERE (NOT public.st_issimple(curso_de_agua_eixo.geometria))
UNION
 SELECT seg_via_ferrea.identificador,
    public.st_setsrid((seg_via_ferrea.geometria)::public.geometry(LineStringZ), 3763) AS geom,
    'seg_via_ferrea'::text AS ft
   FROM public.seg_via_ferrea
  WHERE (NOT public.st_issimple(seg_via_ferrea.geometria))
UNION
 SELECT seg_via_rodov.identificador,
    public.st_setsrid((seg_via_rodov.geometria)::public.geometry(LineStringZ), 3763) AS geom,
    'seg_via_rodov'::text AS ft
   FROM public.seg_via_rodov
  WHERE (NOT public.st_issimple(seg_via_rodov.geometria))
UNION
 SELECT via_rodov_limite.identificador,
    public.st_setsrid((via_rodov_limite.geometria)::public.geometry(LineStringZ), 3763) AS geom,
    'via_rodov_limite'::text AS ft
   FROM public.via_rodov_limite
  WHERE (NOT public.st_issimple(via_rodov_limite.geometria));
