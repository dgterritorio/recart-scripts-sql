-- Área em hectares a área de trabalho
select round((sum(st_area(geometria))/10000)::numeric,3) from public.area_trabalho;
