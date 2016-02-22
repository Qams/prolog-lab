rodzic(kasia,robert).
rodzic(tomek,robert).
rodzic(tomek,eliza).
rodzic(kasia, eliza).
rodzic(robert,anna).
rodzic(robert,magda).
rodzic(magda,jan).
 
kobieta(kasia).
kobieta(eliza).
kobieta(magda).
kobieta(anna).
 
mezczyzna(tomek).
mezczyzna(robert).
mezczyzna(jan).

famme(kasia).
homme(krzys).
parent(kasia,krzys).

matka(X,Y) :-
	rodzic(X,Y), kobieta(X).

ojciec(X,Y) :-
	rodzic(X,Y), mezczyzna(X).

brat(X,Y) :-
	matka(Z,X),matka(Z,Y),X\=Y,ojciec(F,X),ojciec(F,Y),mezczyzna(X).
