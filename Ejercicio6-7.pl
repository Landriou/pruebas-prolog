%Ejercicio 6.7%
%La idea de la regla es la de ir verificando recursivamente%
%las cabezas de cada una de las sublistas%
%en busca de aquel valor que sea mayor a todo el resto%
max_lista([X],X).
max_lista([H|T],X) :- max_lista(T,X), H=<X.