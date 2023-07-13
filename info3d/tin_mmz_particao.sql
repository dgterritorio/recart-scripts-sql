-- Geração do "tin_mmz" por partições, indexando cada ponto a uma grelha quilométrica,
-- neste caso, de 5 Km 

create table tin_mmz as 
(WITH p AS (
         SELECT st_dumppoints(curva_de_nivel.geometria) AS dump
           FROM curva_de_nivel
        ),
        q as( SELECT st_setsrid((p.dump).geom, 3763) AS geom
           FROM p),
        r as ( SELECT 
            q.geom as geom,
            (trunc(st_x(q.geom) / 5000::double precision)::text || ','::text) || trunc(st_y(q.geom) / 5000::double precision)::text AS quad
           FROM q),
           s AS (
         SELECT st_delaunaytriangles(st_collect(r.geom), 0.0::double precision, 2) AS geom,
         r.quad
           FROM r group by r.quad
        ), t AS (
         SELECT st_setsrid((st_dump(s.geom)).geom, 3763) AS geom,
         s.quad 
           FROM s
        )
 SELECT row_number() OVER () AS id,
    t.geom,
    t.quad,
    st_zmax(t.geom::box3d) AS st_zmax,
    st_zmin(t.geom::box3d) AS st_zmin
   FROM t)
   with data;

   -- create index

CREATE INDEX tin_mmz_geom ON tin_mmz USING GIST (geom);