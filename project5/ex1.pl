% :- initialization(set_prolog_flag(double_quotes, codes)).
% :- set_prolog_flag(double_quotes, codes).
empty_stack([]).
pop([H|_], H).
push(Q, X, [X|Q]).
% name().
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
    % append(Right,[Elem],NewRight),
    % Right = [NewRight|Right],
    % copy(NewRight,Right),
    % length(NewRight, L2),
    % write('L2:'),
    % write(L2),nl,
    split_list(T, Left, NewRight).

split_list([Elem|T], Left, Right) :-
    Elem=:=40,
    push(Left, Elem, NewLeft),
    % append(Left,[Elem],NewLeft),
    % Left = [NewLeft|Left],
    % length(NewLeft, L1),
    % write('L1:'),
    % write(L1),nl,
    split_list(T, NewLeft, Right).