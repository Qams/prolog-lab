:- [lists].
delete_first_three(L,X) :-
	[_,_,_|L1] = L,
	sklej(L1,[],X).

delete_first_three2([_,_,_|L1],L1).

delete_last_three([_,_,_], []).
delete_last_three([H|T],Z) :-
	delete_last_three(T, X),
	sklej([H],X,Z).

delete_first_and_last_three(L,Z) :-
	delete_first_three(L,X),
	delete_last_three(X,Z).

even_list([]).
even_list([_,_]).
even_list([_,_|T]) :-
	even_list(T).

odd_list(L) :- \+even_list(L).	

palindrom(L) :- 
	odwroc(L,X),
	L = X.

przesun([X],[X]).
przesun([H|T],Z) :-
	przesun(T,X),
	sklej([H],[],D),
	sklej(X,D,Z).

	
