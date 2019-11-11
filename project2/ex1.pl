mymember(X, L) :-
    append(_, [X|_], L).

myadjacent(X, Y, L) :-
    append(_, [X, Y|_], L).

mylast(X, L) :-
    append(_, [X], L).