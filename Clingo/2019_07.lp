#const n=3.
#const m=5.
row(1..n). col(1..n).
cell(X,Y) :- row(X), col(Y).
% Generar posibles colocaciones de caballos (completar)
m { horse(X,Y) : cell(X,Y) } m.
% prohibir ataques entre ellos (completar)
:- horse(X,Y), horse(X+1,Y+2). % (*)
:- horse(X,Y), horse(X-1,Y+2).
:- horse(X,Y), horse(X+2,Y+1).
:- horse(X,Y), horse(X-2,Y+1).
