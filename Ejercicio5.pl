%Ejercicio 5.1%
primero(L,X) :- L = [X|Y]. 

%Ejercicio 5.2%
resto(L1,L2) :- L1 = [X|Y] , L2 = Y. 

%Ejercicio 5.3%
construye(X,L1,L2) :- L2 = [X|L1].

%Ejercicio 5.4%
pertenece(X,[H|T]) :- X = H.
pertenece(X,[H|T]) :-
    pertenece(X,T).

%Ejercicio 5.5%
concatena([],L2,L2).
concatena([H|T],L2,[H|T2]) :-
    concatena(T,L2,T2).

%Ejercicio 5.6%
inversa([],[]).
inversa([H|T],L2) :- 
    inversa(T,Rest), append(Rest,[H],L2).

%Ejercicio 5.7%
palindromo(L) :- inversa(L,L).

%Ejercicio 5.8%
ultimo(X,[Y]) :- X=Y.
ultimo(X,[H|T]) :- ultimo(X,T). 

%Ejercicio 5.9 (Esta un poquito chingado xdxd)%
selecciona(X,[],[]).
selecciona(X,[X|T],[H|T2]) :- not(X = H), selecciona(X,T,[H2|T2]).
selecciona(X,[H|T],[H2|T2]) :- H = H2,selecciona(X,T,T2).


%Ejercicio 5.12 (Funciona pero tira valores rancios)% 
permutacion([],_).
permutacion([H|T],[H2|T2]) :- permutacion(T,[H2|T2]), member(H,[H2|T2]).