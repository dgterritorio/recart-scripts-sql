-- Distribuição do atributo “utilização atual” do edifício.

WITH a AS (
         SELECT edificio.identificador,
            lig_valor_utilizacao_atual_edificio.valor_utilizacao_atual_id
           FROM (public.edificio
             JOIN public.lig_valor_utilizacao_atual_edificio ON ((edificio.identificador = lig_valor_utilizacao_atual_edificio.edificio_id)))
          ORDER BY edificio.identificador, lig_valor_utilizacao_atual_edificio.valor_utilizacao_atual_id
        ), b AS (
         SELECT a.identificador,
            string_agg((a.valor_utilizacao_atual_id)::text, ' | '::text) AS utilizacao_atual
           FROM a
          GROUP BY a.identificador
        )
 SELECT b.utilizacao_atual,
    count(b.utilizacao_atual) AS count
   FROM b
  GROUP BY b.utilizacao_atual
  ORDER BY b.utilizacao_atual;
