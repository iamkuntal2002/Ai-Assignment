parent(john,ann).
parent(jim,john).
parent(jim,keith).
parent(mary,ann).
parent(mary,sylvia).
parent(brian,sylvia).
male(keith).
male(jim).
male(john).
male(brian).
female(ann).
female(sylvia).
female(mary).


brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
uncle(X,Z):-brother(X,Y),parent(Y,Z).

half_sister(X,Y) :-
    parent(A,X),
    parent(A,Y),
    parent(B,X),
    parent(C,Y),
    not(A = B),
    not(A = C),
    not(B = C),
    female(Y).

