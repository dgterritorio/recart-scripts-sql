CREATE TABLE tin_mmz as
(WITH p AS (
         SELECT st_dumppoints(curva_de_nivel.geometria) AS dump
           FROM curva_de_nivel
        ), q AS (
         SELECT st_setsrid((p.dump).geom, 3763) AS geom
           FROM p
        ), g AS (
         SELECT st_delaunaytriangles(st_collect(q.geom), 0.0::double precision, 2) AS geom
           FROM q
        ), d AS (
         SELECT st_setsrid((st_dump(g.geom)).geom, 3763) AS geom
           FROM g
        )
 SELECT row_number() OVER () AS id,
    d.geom,
    st_zmax(d.geom::box3d) AS st_zmax,
    st_zmin(d.geom::box3d) AS st_zmin
   FROM d)
WITH DATA;


-- create index

CREATE INDEX tin_mmz_geom ON tin_mmz USING GIST (geom);
