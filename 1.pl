father(zeus,ares).
father(ares,harmonia).
father(cadmus,semelel).
father(zeus,dionysus).
mother(hera,ares).
mother(aphrodite,harmonia).
mother(harmonia,semelel).
mężczyzna(zeus).
mężczyzna(ares).
mężczyzna(cadmus).
mężczyzna(semelel).
mężczyzna(dionysus).
kobieta(harmonia).
kobieta(hera).
kobieta(aphrodite).
rodzic(X, Y) :- father(X,Y);mother(X,Y).
jest_matką(X) :- mother(X,_).
jest_ojcem(X) :- father(X,_).
jest_synem(X) :- rodzic(_,X).
siostra(X, Y) :- rodzic(Z,X),rodzic(Z,Y),kobieta(X).
dziadek(X, Y) :- father(X,Z),rodzic(Z,Y).
rodzeństwo(X, Y) :- rodzic(Z,X),rodzic(Z,Y).
