empty_seq([]).

head([H|_], H).

tail([_|T], T).

seq_cons(Q, X, [X|Q]).

front([H], []).
front([H|T], [H|Rest]):-
    front(T, Rest).

last([H], H).
last([H|T], [H|Rest]):-
    front(T, Rest).

add_last_elem([], Elem, [Elem]).
add_last_elem([H|T], Elem, [H|Rest]):-
    add_last_elem(T, Elem, Rest).

add_head_N_occ(Q, Elem, 0, Q).
add_head_N_occ(Q, Elem, N, [Elem|Rest]):-
    N1 is N-1,
    add_head_N_occ(Q, Elem, N1, Rest).

length_seq([],0).
length_seq([H|T], Len):-
    length_seq(T, Len1), Len is Len1+1.

concat([], Q2, Q2).
concat([H|T],Q2, [H|Rest]):-
    concat(T, Q2, Rest).

reverse(Q, R):-
    rev1(Q, [], R).
rev1([], Racc, Racc).
rev1([H|T], Racc, R):-
    rev1(T, [H|Racc], R).

seqNth_elem([H|T], 1, H).
seqNth_elem([H|T], N, Elem):-
    N1 is N-1,
    seqNth_elem(T, N1, Elem).

delete_one_elem_occ([Elem|Rest], Elem, Rest).
delete_one_elem_occ([H|T], Elem, [H|Rest]):-
    delete_one_elem_occ(T, Elem, Rest).

delete_dist_elem([], Elem, []).
delete_dist_elem([Elem|T], Elem, R):-
    delete_dist_elem(T, Elem, R).
delete_dist_elem([H|T], Elem, [H|Rest]):-
    delete_dist_elem(T, Elem, Rest).

delete_Nth_elem([H|T], 1, T).
delete_Nth_elem([H|T], N, [H|Rest]):-
    N1 is N-1,
    delete_Nth_elem(T, N1, Rest).

decompose(Q, Q, []).
decompose([H1|T1], T2, [H1,T3]):-
    decompose(T1, T2, T3).