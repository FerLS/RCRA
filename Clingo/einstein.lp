%1 The Brit lives at the red house.



%5 The green hoouse owner drinks coffee.
at(color,green,H),not at(drink,coffee,H).
%6 THe owner how smokes Pall Mall rears birds.
at(tobaco,pallmall,H), at(pet,birds,H).
%7 The owner living at the yellow house smokes Dunhill.
at(tobaco,dunhill,H), not at(color,yellow,H).
%8 The owner living in the center house drinks milk.
at(drink,milk,3).
%9 The Norwegian lives int the first house.
at(person,norw,1).
%10 THe blend smoker has a neighbour who keeps cats.

casa_con_gato_al_lado(H):- house(H+1),at(pet,cats,H+1).
casa_con_gato_al_lado(H):- house(H-1),at(pet,cats,H-1).
:- at(tobaco,blend,H),not casa_con_gato_al_lado(H).