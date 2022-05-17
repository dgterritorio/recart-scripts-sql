-- Percentagem de edifícios sem nome.

WITH n AS (
         SELECT count(*) AS total_edificio
           FROM public.edificio
        ), s AS (
         SELECT count(*) AS total_sem_nome
           FROM (public.edificio
             LEFT JOIN public.nome_edificio ON ((nome_edificio.edificio_id = edificio.identificador)))
          WHERE (nome_edificio.nome IS NULL)
        )
 SELECT n.total_edificio AS total_edificios,
    round((((s.total_sem_nome)::numeric / (n.total_edificio)::numeric) * (100)::numeric), 2) AS perc_sem_nome
   FROM n,
    s;
