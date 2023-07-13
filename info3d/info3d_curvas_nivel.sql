-- Calcula a cota mínima, cota máxima e intervalo entre as curvas de nível
-- Baseia-se na Materialized View "curvas_nivel_mediana"

SELECT min(cnm.mediana) AS cota_min,
    max(cnm.mediana) AS cota_max,
    (max(cnm.mediana) - min(cnm.mediana)) / (count(DISTINCT cnm.mediana) - 1)::double precision AS cota_intervalo
   FROM curvas_nivel_mediana cnm;