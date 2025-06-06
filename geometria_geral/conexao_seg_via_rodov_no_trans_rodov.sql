-- conexão seg_via_rodov, no_trans_rodov
-- cada eixo tem sempre dois nós

select svr.identificador, svr.geometria
	from public.seg_via_rodov svr, public.area_trabalho adt
	where (ST_StartPoint(svr.geometria) not in (select geometria from public.no_trans_rodov) 
	or ST_EndPoint(svr.geometria) not in (select geometria from public.no_trans_rodov))
		and not st_intersects(svr.geometria, ST_ExteriorRing(adt.geometria))