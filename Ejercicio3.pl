papa(julian,juan).
papa(juan,jose).
papa(juan,emiliano).
papa(jose, cristian).
papa(jose, javier).
esposa(ivonne, cristian).
mama(catalina, javier).
hijo(X,Y) :- papa(Y,X).
abuelo(X,Y) :- papa(X,Z),papa(Z,Y).
bisabuelo(X,Y) :- papa(X,Z),abuelo(Z,Y).
hermano(X,Y) :- papa(Z,X), papa(Z,Y).