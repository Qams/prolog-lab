delta(A,B,C,Wynik) :-
	Wynik is B*B - 4*A*C.

rown(A,B,C,Res) :-
	delta(A,B,C,Wynik),
	Wynik > 0,
	Res is (-B+sqrt(Wynik))/2*A.

rown(A,B,C,Res) :-
	delta(A,B,C,Wynik),
	Wynik > 0,
	Res is (-B-sqrt(Wynik))/2*A.

rown(A,B,C,Res) :-
	delta(A,B,C,Wynik),
	Wynik = 0,
	Res is -B/2*A.
