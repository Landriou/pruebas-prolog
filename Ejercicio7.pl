%Predicado a ejecutar repetidamente para verificar%
permutacion([],_).
permutacion([H|T],[H2|T2]) :- permutacion(T,[H2|T2]), member(H,[H2|T2]).

%Predicado que devuelve una sublista de tamaño n, empezando desde la cabeza%
sublista(_,[],0).
sublista([H|T],[H2|T2],N) :- Z is N-1, H = H2, sublista(T,T2,Z).

multirot(Xs,[]).
multirot(Xs,[H|T]) :- 
    %Z representa la longitud de la lista original%
    %X representa una sublista de tamaño Z%
    %Y representa la sublista resultante de quitar X de la lista mayor%
    length(Xs,Z), 
    sublista([H|T],X,Z),
    permutacion(Xs,X), 
    append(X,Y,[H|T]), 
    multirot(Xs,Y).