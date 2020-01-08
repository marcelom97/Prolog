% Άσκηση 6
% Να γράψετε κατηγόρημα insertSort(L, S) το οποίο είναι αληθές εάν η λίστα S είναι η
% λίστα L με τα στοιχεία της ταξινομημένα κατ’ αύξουσα σειρά. Να υλοποιήσετε την
% ταξινόμηση με παρεμβολή (insertion sort) με την τεχνική κατασκευής δομής στη κεφαλή
% πρότασης και με την τεχνική κατασκευής δομής στο σώμα πρότασης. 
insertSort([], []) :-
    !.
insertSort([Head|L], S) :-
    insertSort(L, S1),
    insert(Head, S1, S).

insert(X, [], [X]) :-
    !.
insert(X, [X1|L1], [X, X1|L1]) :-
    X=<X1,
    !.
insert(X, [X1|L1], [X1|L]) :-
    insert(X, L1, L).
