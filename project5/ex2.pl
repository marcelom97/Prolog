% Άσκηση 2
% Να γράψετε κατηγόρημα queue_element_cardinality(Q1, Q2) το οποίο είναι αληθές εάν
% Q1 είναι μια ουρά με στοιχεία ζεύγη μορφής (Στοιχείο, Πλήθος_επαναλλήψεων) όπου το
% «Στοιχείο» είναι ένας ακέραιος αριθμός και το «πλήθος_επαναλλήψεων» είναι ένας
% θετικός ακέραιος αριθμός. Τέλος, Q2 είναι μια ουρά που περιέχει κάθε «Στοιχείο» της
% Q1 με πληθικότητα «πλήθος_επαναλλήψεων» σε διαδοχικές θέσεις. Στην υλοποίηση
% σας να χρησιμοποιήσετε τις πράξεις για τις ουρές όπως υλοποιήθηκαν στην ενότητα των
% διαφανειών 8.5.5. Παράδειγμα στόχου, 
% «?- queue_element_cardinality([(5,4), (-8,3), (0,2)], Q2).»
%  Q2 = [5,5,5,5,-8,-8,-8,0,0].

empty_queue([]).
member_queue(X, Q) :-
    member(X, Q).
get_elem_queue(X, [X|_]).
dequeue(X, [X|T], T).
enqueue(X, [], [X]).
enqueue(X, [H|T1], [H|T2]) :-
    enqueue(X, T1, T2).
% ----------------------------------------------------
queue_element_cardinality([], _).
queue_element_cardinality(Q1, Q2) :-
    empty_queue(Q2),
    get_elem_queue((Num, Cnt), Q1),
    push_to_queue(Num, Cnt, Q2),
    [_|T]=Q1,
    queue_element_cardinality(T, Q2).
% ----------------------------------------------------
push_to_queue(_, 0, Q2) :- 
    write(Q2),
    !.
push_to_queue(Num, Cnt, Q2) :-
    enqueue(Num, Q2, NewQueue),
    NewCnt is Cnt-1,
    push_to_queue(Num, NewCnt, NewQueue).