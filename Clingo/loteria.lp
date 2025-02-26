
% Que haya al menos un numero repetido

digito(0..9).
bombo(1..5).
1 { bola(X,D) : bombo(X)}  1 :- digito(D).


#show bola/2.