

arista(vancouver, edmonton, 16).
arista(vancouver, calgary, 13).
arista(calgary, edmonton, 4).
arista(edmonton, saskatoon, 12).
arista(saskatoon, calgary, 9).
arista(calgary, regina, 14).
arista(regina, saskatoon, 7).
arista(saskatoon, winnipeg, 20).
arista(regina, winnipeg, 4).

conexion_directa(Ciudad1, Ciudad2) :-
    arista(Ciudad1, Ciudad2, _).

existe_ruta(Ciudad1, Ciudad2) :-
    arista(Ciudad1, Ciudad2, _).

existe_ruta(Ciudad1, Ciudad2) :-
    arista(Ciudad1, Intermedia, _),
    existe_ruta(Intermedia, Ciudad2).

tiene_arista(Ciudad) :-
    arista(Ciudad, _, _).

costo_por(Ciudad1, Intermedia, Ciudad2, CostoTotal) :-
    arista(Ciudad1, Intermedia, C1),
    arista(Intermedia, Ciudad2, C2),
    CostoTotal is C1 + C2.






























