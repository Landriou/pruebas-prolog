%H representa la altura%
%A representa la torre origen%
%B representa la torre destino%
%C representa la torre auxiliar%
moveToTower(0,_,_,_).
moveToTower(H,A,B,C) :- Z is H-1,moveToTower(Z, A, C, B), escribir(A,B), moveToTower(Z,C,B,A),!.
escribir(X,Y) :- write(" Pasar de la torre "), write(X), write(" a "), write(Y), nl.