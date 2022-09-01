--Coordenadas geográficas da extensão da área de trabalho
with b as (select ST_Transform(ST_SetSRID(st_extent (public.area_trabalho.geometria),3763),4326) as bb  from public.area_trabalho)
select st_xmin(bb) as longitude_oeste,st_ymin(bb) as latitude_sul, st_xmax(bb) as longitude_este,st_ymax(bb) as latitude_norte from b;
