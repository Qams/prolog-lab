word(abalone, a, b, a, l, o, n, e).
word(abandon, a, b, a, n, d, o, n).
word(enhance, e, n, h, a, n, c, e).
word(anagram, a, n, a, g, r, a, m).
word(connect, c, o, n, n, e, c, t).
word(elegant, e, l, e, g, a, n, t).

crosswd(V1, V2, V3, H1, H2, H3) :-
	word(V1, _, P12, _, P14, _, P16, _),
	word(V2, _, P22, _, P24, _, P26, _),
	word(V3, _, P32, _, P34, _, P36, _),
	word(H1, _, P12, _, P22, _, P32, _),
	word(H2, _, P14, _, P24, _, P34, _),
	word(H3, _, P16, _, P26, _, P36, _),
	V1 \= V2, V2\=V3, V3\=H1, H1\=H2, H2\=H3.
	
