% List operation

porownaj([_,_,A,B|_]) :-
	A = B.

nalezy(X,[X|_]).
nalezy(X,[_|Y]) :-
	nalezy(X, Y).

dlugosc([],0).
dlugosc([_|X],D) :-
	dlugosc(X,Y),
	D is Y+1.

trzeci([_,_,A|_],A).

sklej([],X,X).
sklej([X|L1], L2, [X|L3]) :-
	sklej(L1,L2,L3).

zamien([A,B,C,D|R], X) :-
	X = [A,B,D,C|R].

nalezy1(X,L) :-
	sklej(_,[X|_],L).

dodaj(X, L, [X|L]).

usun(X, [X|Reszta], Reszta).
usun(X, [Y|Ogon], [Y|Reszta]) :-
	usun(X,Ogon,Reszta).

wstaw(X,L,Duza) :-
	usun(X,Duza,L).

nalezy2(X,L) :-
	usun(X,L,_).

zawiera(S,L) :-
	sklej(_,L2,L),
	sklej(S,_,L2).

odwroc([], []).
odwroc([H|T], L) :-
	odwroc(T,R),
	sklej(R,[H],L).

