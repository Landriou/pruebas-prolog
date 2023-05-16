%Ejercicio 6.1%
maximo(X,Y,Z) :- Z >= X , Z >= Y ,(Z = X ; Z = Y).

%Ejercicio 6.2%
factorial(1,1).
factorial(X,Y) :- Z is X-1, factorial(Z,S), Y is X*S.  

%Ejercicio 6.3%
fibonacci(0,X) :- X is 1.
fibonacci(1,X) :- X is 1.
fibonacci(N,X) :- N > 0, Y is N-1, Z is N-2, fibonacci(Y,S), fibonacci(Z,T), X is S+T. 

%Ejercicio 6.5%
longitud([],0).
longitud([H|T],N) :- Z is N-1 ,longitud(T,Z).

%Ejercicio 6.7%
max_lista([X],X).
max_lista([H|T],X) :- max_lista(T,X), H=<X.

%Ejercicio 6.9%
ordenada([H]).
ordenada([H|[H2|T]]) :- H =< H2, ordenada([H2|T]).