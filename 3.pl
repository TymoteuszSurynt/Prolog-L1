%b1  --  --  b2  --
%b3  b4  --  b5  --
%b6  b7  --  b8  b9
%b10 b11 b12 b13 b14

left(b10,b11).
left(b11,b12).
left(b12,b13).
left(b13,b14).

above(b1,b3).
above(b3,b6).
above(b6,b10).

above(b4,b7).
above(b7,b11).

above(b2,b5).
above(b5,b8).
above(b8,b13).

above(b9,b14).

right(X,Y) :- left(Y,X).
below(X,Y) :- above(Y,X).

left_of(X,Y) :- left(X,Y);(left(X,Z),left_of(Z,Y)).
above_of(X,Y) :- above(X,Y);(above(X,Z),above_of(Z,Y)).

higher(X,Y) :- above_of(X,Y);((above(X,A),above(Y,B)),higher(A,B));(above(X,_),\+ above(Y,_)).
