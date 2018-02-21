le(a,a).
le(a,b).
le(a,c).
le(a,d).
le(b,b).
le(b,c).
le(b,d).
le(c,c).
le(c,d).
le(d,d).

maksymalny(X) :- \+ (le(X,Z),Z\=X).
minimalny(X) :- \+ (le(Z,X),Z\=X).

najwiekszy(X) :- maksymalny(X),\+ ((le(_,A),A\=X), maksymalny(A)).
najmniejszy(X) :- minimalny(X),\+ ((le(A,_),A\=X), minimalny(A)).
