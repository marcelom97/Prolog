% Άσκηση 1
% Να γράψετε κατηγόρημα parenthesis_LR_same(S) το οποίο είναι αληθές εάν η
% συμβολοσειρά των παρενθέσεων τις οποίες δέχεται μέσω της παραμέτρου S περιέχει
% ίσο πλήθος αριστερών και δεξιών παρενθέσεων. Να μη χρησιμοποιήσετε μετρητές ώστε
% να μετράτε τις παρενθέσεις αλλά να χρησιμοποιήσετε την δομή δεδομένων στοίβα. Στην
% υλοποίηση σας να χρησιμοποιήσετε τις πράξεις για τις στοίβες όπως υλοποιήθηκαν στην
% ενότητα του βιβλίου 8.5.5 και στην ενότητα των διαφανειών 8.5.4. Παραδείγματα
% στόχων: 1) «?-parenthesis_LR_same(')))(()((').» yes. 2) «?-
% parenthesis_LR_same(‘(((())‘).» no.

empty_stack([]).
pop([H|_], H).
push(Q, X, [X|Q]).
parenthesis_LR_same(StringPar) :-
    empty_stack(Right),
    empty_stack(Left),
    name(StringPar, L),
    split_list(L, Left, Right).

split_list([], Left, Right) :-
    length(Left, L),
    length(Right, R),
    L=:=R.

split_list([Elem|T], Left, Right) :-
    Elem=:=41,
    push(Right, Elem, NewRight),
    split_list(T, Left, NewRight).

split_list([Elem|T], Left, Right) :-
    Elem=:=40,
    push(Left, Elem, NewLeft),
    split_list(T, NewLeft, Right).