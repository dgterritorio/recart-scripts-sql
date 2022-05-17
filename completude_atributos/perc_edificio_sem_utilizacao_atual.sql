-- Percentagem de edifícios sem utilização atual. Valor de referência máximo 5%

WITH n AS (
         SELECT count(*) AS total_edificio
           FROM public.edificio
        ), s AS (
         SELECT count(*) AS total_sem_utilizacao
           FROM (public.edificio
             LEFT JOIN public.lig_valor_utilizacao_atual_edificio ON ((lig_valor_utilizacao_atual_edificio.edificio_id = edificio.identificador)))
          WHERE (lig_valor_utilizacao_atual_edificio.edificio_id IS NULL)
        )
 SELECT n.total_edificio AS total_edificios,
    round((((s.total_sem_utilizacao)::numeric / (n.total_edificio)::numeric) * (100)::numeric), 2) AS perc_sem_utilizacao
   FROM n,
    s;
