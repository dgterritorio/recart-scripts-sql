-- faz o dump de todos os objetos 3D e pesquisa os vértices que têm cota igual a 0.
(WITH p AS (
         SELECT curso_de_agua_eixo.identificador,
            public.st_dumppoints(curso_de_agua_eixo.geometria) AS dump
           FROM public.curso_de_agua_eixo
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'curso_de_agua_eixo'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT curso_de_agua_area.identificador,
            public.st_dumppoints(curso_de_agua_area.geometria) AS dump
           FROM public.curso_de_agua_area
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'curso_de_agua_area'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT agua_lentica.identificador,
            public.st_dumppoints(agua_lentica.geometria) AS dump
           FROM public.agua_lentica
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'agua_lentica'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT curva_de_nivel.identificador,
            public.st_dumppoints(curva_de_nivel.geometria) AS dump
           FROM public.curva_de_nivel
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'curva_de_nivel'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT linha_de_quebra.identificador,
            public.st_dumppoints(linha_de_quebra.geometria) AS dump
           FROM public.linha_de_quebra
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'linha_de_quebra'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT no_hidrografico.identificador,
            public.st_dumppoints(no_hidrografico.geometria) AS dump
           FROM public.no_hidrografico
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'no_hidrografico'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT no_trans_ferrov.identificador,
            public.st_dumppoints(no_trans_ferrov.geometria) AS dump
           FROM public.no_trans_ferrov
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'no_trans_ferrov'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT no_trans_rodov.identificador,
            public.st_dumppoints(no_trans_rodov.geometria) AS dump
           FROM public.no_trans_rodov
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'no_trans_rodov'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT obra_arte.identificador,
            public.st_dumppoints(obra_arte.geometria) AS dump
           FROM public.obra_arte
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'obra_arte'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT ponto_cotado.identificador,
            public.st_dumppoints(ponto_cotado.geometria) AS dump
           FROM public.ponto_cotado
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'ponto_cotado'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT seg_via_ferrea.identificador,
            public.st_dumppoints(seg_via_ferrea.geometria) AS dump
           FROM public.seg_via_ferrea
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'seg_via_ferrea'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT seg_via_rodov.identificador,
            public.st_dumppoints(seg_via_rodov.geometria) AS dump
           FROM public.seg_via_rodov
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'seg_via_rodov'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision))
UNION
( WITH p AS (
         SELECT via_rodov_limite.identificador,
            public.st_dumppoints(via_rodov_limite.geometria) AS dump
           FROM public.via_rodov_limite
        ), q AS (
         SELECT p.identificador,
            (p.dump).path[1] AS index,
            public.st_z((p.dump).geom) AS z,
            public.st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        )
 SELECT q.identificador,
    q.index,
    q.z,
    q.geom AS geometria,
    'via_rodov_limite'::text AS ft
   FROM q
  WHERE (q.z = (0)::double precision));
