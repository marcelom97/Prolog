empty_queue([]).

member_queue(X, Q):-
    member(X, Q).

set_elem_queue(X, [X|T]).

dequeue(X, [X|T], T).

enqueue(X, [], [X]).
enqueue(X, [X|T1], [H|T2]):-
    enqueue(X, T1, T2).