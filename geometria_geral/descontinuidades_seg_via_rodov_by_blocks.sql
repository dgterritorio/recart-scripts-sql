-- Endpoints cuja distância entre si são inferiores a 0.2 metros mas diferentes de zero.
-- Este script faz o mesmo que "descontinuidades_seg_via_rodov.sql" mas divide a área de trabalho em 4 blocos para optimizar o tempo de execução.
-- Nota1: cada descontinuidade entre duas instâncias dá origem a 2 registos.
( WITH c AS (
         SELECT st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x1,
            st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y1,
            st_x(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x2,
            st_y(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y2,
            (st_x(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) - st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria)))) / 2::double precision + st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x3,
            (st_y(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) - st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria)))) / 2::double precision + st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y3
           FROM area_trabalho
        ), p AS (
         SELECT curso_de_agua_eixo.identificador,
            st_startpoint(curso_de_agua_eixo.geometria) AS geom
           FROM curso_de_agua_eixo,
            c
          WHERE st_x(st_startpoint(curso_de_agua_eixo.geometria)) > c.x1 AND st_x(st_startpoint(curso_de_agua_eixo.geometria)) < c.x3 AND st_y(st_startpoint(curso_de_agua_eixo.geometria)) > c.y3 AND st_y(st_startpoint(curso_de_agua_eixo.geometria)) < c.y2
        UNION
         SELECT curso_de_agua_eixo.identificador,
            st_endpoint(curso_de_agua_eixo.geometria) AS geom
           FROM curso_de_agua_eixo,
            c
          WHERE st_x(st_endpoint(curso_de_agua_eixo.geometria)) > c.x1 AND st_x(st_endpoint(curso_de_agua_eixo.geometria)) < c.x3 AND st_y(st_endpoint(curso_de_agua_eixo.geometria)) > c.y3 AND st_y(st_endpoint(curso_de_agua_eixo.geometria)) < c.y2
        )
 SELECT row_number() OVER () AS id,
    p1.identificador AS p1_id,
    p2.identificador AS p2_id,
    st_3ddistance(p1.geom, p2.geom) AS dist_p1_p2,
    st_setsrid(p1.geom::geometry(PointZ), 3763) AS p1_endpoint_geom
   FROM p p1
     JOIN p p2 ON st_3ddistance(p1.geom, p2.geom) <> 0::double precision AND st_3ddistance(p1.geom, p2.geom) < 0.2::double precision)
UNION
( WITH c AS (
         SELECT st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x1,
            st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y1,
            st_x(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x2,
            st_y(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y2,
            (st_x(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) - st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria)))) / 2::double precision + st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x3,
            (st_y(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) - st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria)))) / 2::double precision + st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y3
           FROM area_trabalho
        ), p AS (
         SELECT curso_de_agua_eixo.identificador,
            st_startpoint(curso_de_agua_eixo.geometria) AS geom
           FROM curso_de_agua_eixo,
            c
          WHERE st_x(st_startpoint(curso_de_agua_eixo.geometria)) > c.x3 AND st_x(st_startpoint(curso_de_agua_eixo.geometria)) < c.x2 AND st_y(st_startpoint(curso_de_agua_eixo.geometria)) > c.y3 AND st_y(st_startpoint(curso_de_agua_eixo.geometria)) < c.y2
        UNION
         SELECT curso_de_agua_eixo.identificador,
            st_endpoint(curso_de_agua_eixo.geometria) AS geom
           FROM curso_de_agua_eixo,
            c
          WHERE st_x(st_endpoint(curso_de_agua_eixo.geometria)) > c.x3 AND st_x(st_endpoint(curso_de_agua_eixo.geometria)) < c.x2 AND st_y(st_endpoint(curso_de_agua_eixo.geometria)) > c.y3 AND st_y(st_endpoint(curso_de_agua_eixo.geometria)) < c.y2
        )
 SELECT row_number() OVER () AS id,
    p1.identificador AS p1_id,
    p2.identificador AS p2_id,
    st_3ddistance(p1.geom, p2.geom) AS dist_p1_p2,
    st_setsrid(p1.geom::geometry(PointZ), 3763) AS p1_endpoint_geom
   FROM p p1
     JOIN p p2 ON st_3ddistance(p1.geom, p2.geom) <> 0::double precision AND st_3ddistance(p1.geom, p2.geom) < 0.2::double precision)
UNION
( WITH c AS (
         SELECT st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x1,
            st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y1,
            st_x(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x2,
            st_y(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y2,
            (st_x(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) - st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria)))) / 2::double precision + st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x3,
            (st_y(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) - st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria)))) / 2::double precision + st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y3
           FROM area_trabalho
        ), p AS (
         SELECT curso_de_agua_eixo.identificador,
            st_startpoint(curso_de_agua_eixo.geometria) AS geom
           FROM curso_de_agua_eixo,
            c
          WHERE st_x(st_startpoint(curso_de_agua_eixo.geometria)) > c.x1 AND st_x(st_startpoint(curso_de_agua_eixo.geometria)) < c.x3 AND st_y(st_startpoint(curso_de_agua_eixo.geometria)) > c.y1 AND st_y(st_startpoint(curso_de_agua_eixo.geometria)) < c.y3
        UNION
         SELECT curso_de_agua_eixo.identificador,
            st_endpoint(curso_de_agua_eixo.geometria) AS geom
           FROM curso_de_agua_eixo,
            c
          WHERE st_x(st_endpoint(curso_de_agua_eixo.geometria)) > c.x1 AND st_x(st_endpoint(curso_de_agua_eixo.geometria)) < c.x3 AND st_y(st_endpoint(curso_de_agua_eixo.geometria)) > c.y1 AND st_y(st_endpoint(curso_de_agua_eixo.geometria)) < c.y3
        )
 SELECT row_number() OVER () AS id,
    p1.identificador AS p1_id,
    p2.identificador AS p2_id,
    st_3ddistance(p1.geom, p2.geom) AS dist_p1_p2,
    st_setsrid(p1.geom::geometry(PointZ), 3763) AS p1_endpoint_geom
   FROM p p1
     JOIN p p2 ON st_3ddistance(p1.geom, p2.geom) <> 0::double precision AND st_3ddistance(p1.geom, p2.geom) < 0.2::double precision)
UNION
( WITH c AS (
         SELECT st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x1,
            st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y1,
            st_x(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x2,
            st_y(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y2,
            (st_x(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) - st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria)))) / 2::double precision + st_x(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS x3,
            (st_y(st_endpoint(st_boundingdiagonal(area_trabalho.geometria))) - st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria)))) / 2::double precision + st_y(st_startpoint(st_boundingdiagonal(area_trabalho.geometria))) AS y3
           FROM area_trabalho
        ), p AS (
         SELECT curso_de_agua_eixo.identificador,
            st_startpoint(curso_de_agua_eixo.geometria) AS geom
           FROM curso_de_agua_eixo,
            c
          WHERE st_x(st_startpoint(curso_de_agua_eixo.geometria)) > c.x3 AND st_x(st_startpoint(curso_de_agua_eixo.geometria)) < c.x2 AND st_y(st_startpoint(curso_de_agua_eixo.geometria)) > c.y1 AND st_y(st_startpoint(curso_de_agua_eixo.geometria)) < c.y3
        UNION
         SELECT curso_de_agua_eixo.identificador,
            st_endpoint(curso_de_agua_eixo.geometria) AS geom
           FROM curso_de_agua_eixo,
            c
          WHERE st_x(st_endpoint(curso_de_agua_eixo.geometria)) > c.x3 AND st_x(st_endpoint(curso_de_agua_eixo.geometria)) < c.x2 AND st_y(st_endpoint(curso_de_agua_eixo.geometria)) > c.y1 AND st_y(st_endpoint(curso_de_agua_eixo.geometria)) < c.y3
        )
 SELECT row_number() OVER () AS id,
    p1.identificador AS p1_id,
    p2.identificador AS p2_id,
    st_3ddistance(p1.geom, p2.geom) AS dist_p1_p2,
    st_setsrid(p1.geom::geometry(PointZ), 3763) AS p1_endpoint_geom
   FROM p p1
     JOIN p p2 ON st_3ddistance(p1.geom, p2.geom) <> 0::double precision AND st_3ddistance(p1.geom, p2.geom) < 0.2::double precision)
