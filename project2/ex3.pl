% % ΚΕΦΑΛΗ
occurrences([], _, 0).
occurrences([Head|Tail], Element, N) :- 
    dif(Element,Head), 
    occurrences(Tail, Element, N).
occurrences([Head|Tail], Element, N) :- 
    Element = Head, 
    occurrences(Tail, Element, N1),
    N is N1 + 1.

% ΣΩΜΑ
% occurrences(C, L, R) :-
%     occurrences(C, L, 0, R).
% occurrences(_, [], Acc, Acc).
% occurrences(C, [C|Xr], Acc, R) :-
%     IncAcc is Acc + 1,
%     occurrences(C, Xr, IncAcc, R).
% occurrences(C, [X|Xr], Acc, R) :-
%     dif(X, C),
%     occurrences(C, Xr, Acc, R).