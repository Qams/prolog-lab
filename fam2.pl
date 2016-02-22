rodzic(kasia,robert).
rodzic(tomek,robert).
rodzic(tomek,eliza).
rodzic(henryk,krystyna).
rodzic(kasia, eliza).
rodzic(robert,anna).
rodzic(krystyna,anna).
rodzic(robert,magda).
rodzic(magda,jan).
 
kobieta(kasia).
kobieta(eliza).
kobieta(magda).
kobieta(anna).
kobieta(krystyna).
 
mezczyzna(tomek).
mezczyzna(robert).
mezczyzna(jan).
mezczyzna(henryk).

famme(kasia).
homme(krzys).
parent(kasia,krzys).

matka(X,Y) :-
	rodzic(X,Y), kobieta(X).

ojciec(X,Y) :-
	rodzic(X,Y), mezczyzna(X).

brat(X,Y) :-
	matka(Z,X),
	matka(Z,Y),
	X\=Y,
	ojciec(F,X),
	ojciec(F,Y),
	mezczyzna(X).

siostra(X,Y) :-
	matka(Z,X),
	matka(Z,Y),
	X\=Y,
	ojciec(F,X),
	ojciec(F,Y),
	kobieta(X).

dziadek(X,Y) :-
	rodzic(F,Y),
	ojciec(X,F).

babcia(X,Y) :-
	rodzic(M,Y),
	matka(X,M).

przodek(X,Y) :- 
	rodzic(X,Y).

przodek(X,Z) :-
	rodzic(X,Y),
	przodek(Y,Z).

potomek(X,Y) :-
	rodzic(Y,X).

potomek(X,Y) :-
	rodzic(Z,X),
	potomek(Z,Y).
	
