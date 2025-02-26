node(1..4).
edge(1,2). edge(2,3). edge(2,4).
edge(3,1). edge(3,4). edge(4,3). edge(4,1).
%in(X,Y) = la arista (X,Y) está en la solución
%Generar conjuntos de aristas
{in(X,Y) : edge(X,Y)}.

%No puedes salir a dos nodos diferentes
:- in(X,Y), in(X,Y'), Y != Y'.

%No puedes llegar de dos nodos diferentes
:- in(X,Y), in(X',Y), X != X'.

%reach(X, Y) = desde X puedo llegar a Y
reach(Y) :- in(1, Y).
reach(Z) :- reach(Y), in(Y, Z).

:- node(Y), not reach(Y).

%Lo de arriba es recursivicad por la izquierda, se puede también hacer por la derecha o por los dos lados
%Hacer recursividad por los dos lados no es buena idea, ya que el grounding generaría muchos casos no efectivos de reach


#show in/2.