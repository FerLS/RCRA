 #const n =3.
 digito (1..n) . fila (1.. n) . columna (1.. n).
 #show celda /3.
 1 { celda (X ,Y ,D) : digito (D)} 1 :- fila (X) , columna (Y) .
