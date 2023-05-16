sintoma(jose,fiebre).
enfermedad(fiebre,coronavirus).
remedio(coronavirus,error404).
enfermo(X,Y) :- sintoma(X,Z),enfermedad(Z,Y).