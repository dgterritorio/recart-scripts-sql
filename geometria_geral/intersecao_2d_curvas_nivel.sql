-- verificação se as curvas de nível se intersectam a 2D

SELECT a.identificador AS id1,
    b.identificador AS id2
   FROM curva_de_nivel a
     JOIN curva_de_nivel b ON a.geometria && b.geometria AND a.identificador <> b.identificador AND st_intersects(st_force2d(a.geometria), st_force2d(b.geometria));