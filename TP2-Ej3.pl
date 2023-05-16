%Cada valor de los argumentos es la longitud de los lados%
%a)%
triangulo(X,X,X) :- write("El triangulo es equilatero!"), !.
triangulo(X,X,Y) :- not(X = Y), write("El triangulo es isósceles!"), !.
triangulo(X,Y,Z) :- not(X = Y), not(X = Z), not(Y = Z), write("El triangulo es ecaleno!").

%b)%
