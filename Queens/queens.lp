#const n = 100.
row(1..100).
col(1..100).

%coloca una reina en la cada fila
1 { queen(X,Y) : col(Y) } 1 :- row(X).
%No pongas dos en la misma columna
:- queen(X,Y), queen(X',Y), X!= X'.
%Coloca una reina en cada columna
1 { queen(X,Y) : row(X) } 1 :- col(Y).
%No pongas dos en la misma diagonal
:- queen(X,Y), queen(X',Y'), |X-X'| = |Y-Y'|,X!=X'.
:- queen(X,Y), queen(X',Y'), |X-X'| = |Y-Y'|,Y!=Y'.

#show queen/2.