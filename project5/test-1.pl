:-dynamic parent/2,father/2,mother/2.

parent(X,Y):-father(X,Y).
parent(X,Y):-mother(X,Y).

mother(elene,anna).
mother(elene,kostas).
father(yannis,maria).
father(kostas,petros).

% clause(parent(X,Y),Body).
% asserta(mother(anna,petros)).
% assertz(father(yannis,kostas)).
% retract((parent(X,Y):-father(X,Y))).
% retract(father(yannis,kostas)). 
% abolish(mother/2).