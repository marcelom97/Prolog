% ΚΕΦΑΛΗ
maxElement([M], M).
maxElement([H|T], H) :-
    maxElement(T, M), 
    H > M.
maxElement([H|T], M) :- 
    maxElement(T, M), 
    H =< M.

% ΣΩΜΑ
maxElement([H|T], Max) :- 
    maxElement1(T, H, Max).
maxElement1([], M, M).
maxElement1([H|T], M, Max) :- 
    H > M,
    maxElement1(T, H, Max).
maxElement1([H|T], M, Max) :- 
    H =< M, 
    maxElement1(T, M, Max).