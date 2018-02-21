on(b1,b2).
on(b2,b3).
on(b3,b4).
above(X,Y) :- on(X,Y);(on(X,Z),above(Z,Y)).
