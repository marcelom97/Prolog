insertSort([], []):- 
    !.
insertSort([Head|L], S):- 
    insertSort(L, S1), 
    insert(Head, S1, S).

insert(X, [], [X]):- 
    !.
insert(X, [X1|L1], [X, X1|L1]):- 
    X=<X1, 
    !.
insert(X, [X1|L1], [X1|L]):- 
    insert(X, L1, L).
