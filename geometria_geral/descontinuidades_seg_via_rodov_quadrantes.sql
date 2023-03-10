--Endpoints cuja distância entre si são inferiores a 0.2 metros mas diferentes de zero.
-- Utilização de quadrantes com 100 metros para indexação dos registos
-- Muito melhor desempenho em relação às versões anteriores



WITH p AS
(
	SELECT  seg_via_rodov.identificador                   AS id
	       ,public.st_startpoint(seg_via_rodov.geometria) AS geom
	FROM public.seg_via_rodov
	UNION
	SELECT  seg_via_rodov.identificador
	       ,public.st_endpoint(seg_via_rodov.geometria) AS geom
	FROM public.seg_via_rodov
), q AS
(
	SELECT  p.id
	       ,p.geom
	       ,trunc(ST_X(p.geom)/ 100)::text || ',' || trunc(ST_Y(p.geom)/ 100)::text AS quad
	FROM p
)
SELECT  p1.id                                                      AS p1_id
       ,p2.id                                                      AS p2_id
       ,public.st_3ddistance(p1.geom,p2.geom)                      AS dist_p1_p2
       ,public.st_setsrid((p1.geom)::public.geometry(PointZ),3763) AS p1_endpoint_geom
FROM
(q p1
	JOIN q p2
	ON p1.quad = p2.quad AND (((public.st_3ddistance(p1.geom, p2.geom) <> (0)::double precision) AND (public.st_3ddistance(p1.geom, p2.geom) < (0.2)::double precision)))
);