concatena([],L,L).
concatena([H|T],L,[H|T2]) :- concatena(T,L,T2). 