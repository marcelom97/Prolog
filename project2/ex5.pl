% ΚΕΦΑΛΗ
maxElementHead([Max], Max).
maxElementHead([Head|Tail], Head) :-
    maxElementHead(Tail, Max), 
    Head > Max.
maxElementHead([Head|Tail], Max) :- 
    maxElementHead(Tail, Max), 
    Head =< Max.

% ΣΩΜΑ
maxElementBody([Head|Tail], Max) :- 
    maxElement1(Tail, Head, Max).
maxElement1([], M, M).
maxElement1([Head|Tail], M, Max) :- 
    Head > M,
    maxElement1(Tail, Head, Max).
maxElement1([Head|Tail], M, Max) :- 
    Head =< M, 
    maxElement1(Tail, M, Max).