--Endpoints cuja distância entre si são inferiores a 0.2 metros mas diferentes de zero.
-- Nota1: cada descontinuidade entre duas instâncias dá origem a 2 registos.
-- Nota 2: este script pode ser muito demorado a correr devido ao "cross-join".
-- Crescimento exponencial do tempo de execução. 17000 registos --> 11 minutos, 30000--> 35 minutos


WITH p AS (
        SELECT seg_via_rodov.identificador,
           public.st_startpoint(seg_via_rodov.geometria) AS geom
          FROM public.seg_via_rodov
       UNION
        SELECT seg_via_rodov.identificador,
           public.st_endpoint(seg_via_rodov.geometria) AS geom
          FROM public.seg_via_rodov
       )
SELECT row_number() OVER () AS id,
   p1.identificador AS p1_id,
   p2.identificador AS p2_id,
   public.st_3ddistance(p1.geom, p2.geom) AS dist_p1_p2,
   public.st_setsrid((p1.geom)::public.geometry(PointZ), 3763) AS p1_endpoint_geom
  FROM (p p1
    JOIN p p2 ON (((public.st_3ddistance(p1.geom, p2.geom) <> (0)::double precision) AND (public.st_3ddistance(p1.geom, p2.geom) < (0.2)::double precision))));
