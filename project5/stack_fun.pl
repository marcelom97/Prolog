empty_stack([]).

% top([H], H).
% top([H|T], Last):-
%     top(T, Last).
top([H|T], H).

% pop([H], []).
% pop([H|T], [H|Rest]):-
%     pop(T, Rest).
pop([H|T], T).

% push([], Elem, [Elem]).
% push([H|T], Elem, [H|Rest]):-
%     push(T, Elem, Rest).
push(Q, X, [X|Q]).