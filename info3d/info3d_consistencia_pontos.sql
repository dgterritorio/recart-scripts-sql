-- Redução dos objectos tridimensionais a pontos e validação em relação ao tin_mmz


WITH info3d_cn AS (
         SELECT min(cnm.mediana) AS cota_min,
            max(cnm.mediana) AS cota_max,
            (max(cnm.mediana) - min(cnm.mediana)) / (count(DISTINCT cnm.mediana) - 1)::double precision AS cota_intervalo
           FROM carttop.curvas_nivel_mediana cnm
        ), pz AS (
        ( WITH p AS (
                 SELECT curso_de_agua_eixo.identificador,
                    st_dumppoints(curso_de_agua_eixo.geometria) AS dump
                   FROM curso_de_agua_eixo where curso_de_agua_eixo.valor_posicao_vertical = '0'
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'curso_de_agua_eixo'::text AS ft
           FROM q)
        UNION
        ( WITH p AS (
                 SELECT curso_de_agua_area.identificador,
                    st_dumppoints(curso_de_agua_area.geometria) AS dump
                   FROM curso_de_agua_area
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'curso_de_agua_area'::text AS ft
           FROM q)
        UNION
        ( WITH p AS (
                 SELECT agua_lentica.identificador,
                    st_dumppoints(agua_lentica.geometria) AS dump
                   FROM agua_lentica
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'agua_lentica'::text AS ft
           FROM q)
        UNION
        ( WITH p AS (
                 SELECT linha_de_quebra.identificador,
                    st_dumppoints(linha_de_quebra.geometria) AS dump
                   FROM linha_de_quebra
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'linha_de_quebra'::text AS ft
           FROM q)
        UNION
        ( WITH p AS (
                 SELECT no_hidrografico.identificador,
                    st_dumppoints(no_hidrografico.geometria) AS dump
                   FROM no_hidrografico
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'no_hidrografico'::text AS ft
           FROM q)
        UNION
        ( WITH p AS (
                 SELECT no_trans_ferrov.identificador,
                    st_dumppoints(no_trans_ferrov.geometria) AS dump
                   FROM no_trans_ferrov
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'no_trans_ferrov'::text AS ft
           FROM q)
        UNION
        ( WITH p AS (
                 SELECT no_trans_rodov.identificador,
                    st_dumppoints(no_trans_rodov.geometria) AS dump
                   FROM no_trans_rodov
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'no_trans_rodov'::text AS ft
           FROM q)
        UNION
        ( WITH p AS (
                 SELECT ponto_cotado.identificador,
                    st_dumppoints(ponto_cotado.geometria) AS dump
                   FROM ponto_cotado
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'ponto_cotado'::text AS ft
           FROM q)
        UNION
        ( WITH p AS (
                 SELECT seg_via_ferrea.identificador,
                    st_dumppoints(seg_via_ferrea.geometria) AS dump
                   FROM seg_via_ferrea
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'seg_via_ferrea'::text AS ft
           FROM q)
        UNION
        ( WITH p AS (
                 SELECT seg_via_rodov.identificador,
                    st_dumppoints(seg_via_rodov.geometria) AS dump
                   FROM seg_via_rodov where seg_via_rodov.valor_posicao_vertical_transportes = '0'
                ), q AS (
                 SELECT p.identificador,
                    (p.dump).path[1] AS index,
                    st_z((p.dump).geom) AS z,
                    st_setsrid((p.dump).geom, 3763) AS geom
                   FROM p
                )
         SELECT q.identificador,
            q.index,
            q.z,
            q.geom AS geometria,
            'seg_via_rodov'::text AS ft
           FROM q)
        ), pz_info3d_cn AS (
         SELECT pz.identificador,
            pz.index,
            pz.z,
            pz.geometria,
            pz.ft,
            info3d_cn.cota_min,
            info3d_cn.cota_max,
            info3d_cn.cota_intervalo
           FROM pz,
            info3d_cn
        ), pz_tin AS (
         SELECT pz_info3d_cn.identificador,
            pz_info3d_cn.index,
            pz_info3d_cn.z,
            pz_info3d_cn.geometria,
            pz_info3d_cn.ft,
            tin.id AS tin_id
           FROM pz_info3d_cn
             LEFT JOIN validacao.tin_mmz tin ON st_intersects(pz_info3d_cn.geometria, tin.geom) AND ((pz_info3d_cn.z >= tin.st_zmin AND pz_info3d_cn.z <= tin.st_zmax) OR (tin.st_zmax = tin.st_zmin AND abs(pz_info3d_cn.z - tin.st_zmax) <= pz_info3d_cn.cota_intervalo::numeric::double precision))
        )
 SELECT row_number() OVER () AS id,
    pz_tin.identificador,
    pz_tin.index,
    pz_tin.z,
    pz_tin.geometria,
    pz_tin.ft
   FROM pz_tin, area_trabalho at2  WHERE pz_tin.tin_id IS NULL and ST_Within(pz_tin.geometria, at2.geometria);
