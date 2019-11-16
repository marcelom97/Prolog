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
    maxElementHelper(Tail, Head, Max).
maxElementHelper([], M, M).
maxElementHelper([Head|Tail], M, Max) :- 
    Head > M,
    maxElementHelper(Tail, Head, Max).
maxElementHelper([Head|Tail], M, Max) :- 
    Head =< M, 
    maxElementHelper(Tail, M, Max).