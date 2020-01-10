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
    write_head_tail(Num, Cnt, Q2),
    [_|T]=Q1,
    queue_element_cardinality(T, Q2).
% ----------------------------------------------------
write_head_tail(Num, Cnt, Q2) :-
    write(Num),
    write(:),
    write(Cnt),
    nl,
    push_to_queue(Num, Cnt, Q2).
% ----------------------------------------------------
push_to_queue(_, 0, _).
push_to_queue(Num, Cnt, Q2) :-
    enqueue(Num, Q2, NewQueue),
    NewCnt is Cnt-1,
    push_to_queue(Num, NewCnt, NewQueue).