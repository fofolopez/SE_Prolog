% Ejemplo Figura 1.8 Programa de la familia

% relaciones de padres
parent( mario, katia).
parent( blanca, katia).
parent( mario, julio).
parent( blanca, julio).
parent( katia, rosa).
parent( julio, juliana).
parent( julio, tamara).

% relaciones de sexo
male( mario).
male( julio).
female( blanca).
female( katia).
female( rosa).
female( juliana).
female( tamara).

% otras relaciones
father( X, Y) :-
	parent( X, Y),
	male( X).

mother( X, Y) :-
	parent( X, Y),
	female( X).

grandparent( X, Y) :-
	parent( X, Z),
	parent( Z, Y).

sister( X, Y) :-
	parent( Z, X),
	parent( Z, Y),
	female( X),
	X \== Y.

aunt( X, Y) :-
	parent( Z, Y),
	sister( X, Z).

grandchild( X, Y) :-
	parent( X, Z),
	parent( Z, Y).