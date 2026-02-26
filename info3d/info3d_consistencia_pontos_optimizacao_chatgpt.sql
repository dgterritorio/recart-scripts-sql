-- Redução dos objectos tridimensionais a pontos e validação em relação ao tin_mmz
-- Optimização ChatGPT com criação de uma tabela intermédia "pz_info3d_cn" 


CREATE TABLE validacao.pz_info3d_cn AS
WITH info3d_cn AS (
    SELECT
        min(mediana) AS cota_min,
        max(mediana) AS cota_max,
        (max(mediana) - min(mediana)) /
        (count(DISTINCT mediana) - 1)::double precision AS cota_intervalo
    FROM carttop.curvas_nivel_mediana
),
pz AS (
    SELECT t.identificador,
           dp.path[1] AS index,
           ST_Z(dp.geom) AS z,
           ST_SetSRID(dp.geom,3763) AS geometria,
           t.ft
    FROM (
        SELECT identificador, geometria, 'curso_de_agua_eixo'::text ft
        FROM curso_de_agua_eixo
        WHERE valor_posicao_vertical='0'
        UNION ALL
        SELECT identificador, geometria, 'curso_de_agua_area'
        FROM curso_de_agua_area
        UNION ALL
        SELECT identificador, geometria, 'agua_lentica'
        FROM agua_lentica
        UNION ALL
        SELECT identificador, geometria, 'linha_de_quebra'
        FROM linha_de_quebra
        UNION ALL
        SELECT identificador, geometria, 'no_hidrografico'
        FROM no_hidrografico
        UNION ALL
        SELECT identificador, geometria, 'no_trans_ferrov'
        FROM no_trans_ferrov
        UNION ALL
        SELECT identificador, geometria, 'no_trans_rodov'
        FROM no_trans_rodov
        UNION ALL
        SELECT identificador, geometria, 'ponto_cotado'
        FROM ponto_cotado
        UNION ALL
        SELECT identificador, geometria, 'seg_via_ferrea'
        FROM seg_via_ferrea
        UNION ALL
        SELECT identificador, geometria, 'seg_via_rodov'
        FROM seg_via_rodov
        WHERE valor_posicao_vertical_transportes='0'
    ) t
    CROSS JOIN LATERAL ST_DumpPoints(t.geometria) dp
)
SELECT
    pz.*,
    info3d_cn.cota_min,
    info3d_cn.cota_max,
    info3d_cn.cota_intervalo
FROM pz
CROSS JOIN info3d_cn;


CREATE INDEX pz_info3d_cn_geom ON validacao.pz_info3d_cn USING GIST (geometria);


CREATE MATERIALIZED VIEW validacao.info3d_consistencia_pontos
TABLESPACE pg_default
AS WITH pz_tin AS (
         SELECT pz_info3d_cn.identificador,
            pz_info3d_cn.index,
            pz_info3d_cn.z,
            pz_info3d_cn.geometria,
            pz_info3d_cn.ft,
            tin.id AS tin_id
           FROM validacao.pz_info3d_cn
             LEFT JOIN validacao.tin_mmz tin ON st_intersects(pz_info3d_cn.geometria, tin.geom) AND ((pz_info3d_cn.z >= tin.st_zmin AND pz_info3d_cn.z <= tin.st_zmax) OR (tin.st_zmax = tin.st_zmin AND abs(pz_info3d_cn.z - tin.st_zmax) <= pz_info3d_cn.cota_intervalo::numeric::double precision))
        )
 SELECT row_number() OVER () AS id,
    pz_tin.identificador,
    pz_tin.index,
    pz_tin.z,
    pz_tin.geometria,
    pz_tin.ft
   FROM pz_tin, area_trabalho at2  WHERE pz_tin.tin_id IS NULL and ST_Within(pz_tin.geometria, at2.geometria) WITH DATA;

