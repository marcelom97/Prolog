empty_queue([]).
push(Q, X, [Q|X]).
dequeue(X, [X|T], T).
enqueue(X, [], [X]).

queue_element_cardinality(Q1, Q2) :-
    temp_fun(Q1, Q2).


temp_fun(Q1, Q2) :-
    empty_queue(Q2),
    empty_queue(Queue),
    write_head_tail(Q1, Q2, Queue).
    % write(Queue),
    % nl,
    % write(Q2).

write_head_tail([], _, _).
write_head_tail([H|T], Q2, Queue) :-
    compound_name_arguments(H, _, B),
    write_splitted(B, Q2, Queue),
    write_head_tail(T, Q2, Queue).

write_splitted([], [], _).
write_splitted([H|T], Q2, Queue) :-
    push_to_queue(H, T, Q2, Queue).

push_to_queue(_, [0], Q2, Queue) :-
    nl,
    write('Q2:'),write(Q2),nl,
    write('Queue:'),write(Queue),
    !.
        % append(Queue, Q2).
push_to_queue(H, [T|_], Q2, Queue) :-
    % write(H),
    append(Queue, [H], NewQueue),
    % write(NewQueue),
    % nl,
    NewT is T-1,
    push_to_queue(H, [NewT], Q2, NewQueue).