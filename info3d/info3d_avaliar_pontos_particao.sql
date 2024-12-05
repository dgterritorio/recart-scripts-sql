-- Avaliação do número de vertíces das curvas de nível por partição/ quadrante da grelha 
-- para a geração do TIN. Neste exemplo é utilizada uma partição de 10 km.
-- No nosso caso, o limite máximo de pontos por partição sã0 4.500.000

with s as (SELECT st_dumppoints(curva_de_nivel.geometria) as dump
from curva_de_nivel),
p as (select (s.dump).geom as geom
from s),
a as (
select trunc(st_x(p.geom) / 10000::double precision)::text || ','::text || trunc(st_y(p.geom) / 10000::double precision)::text as code
from p)
select a.code, count(*) from a group by code; 