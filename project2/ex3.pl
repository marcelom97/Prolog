% ΚΕΦΑΛΗ
occurrencesHead([], _, 0).
occurrencesHead([Head|Tail], Element, N) :- 
    dif(Element,Head), 
    occurrencesHead(Tail, Element, N).
occurrencesHead([Head|Tail], Element, N) :- 
    Element = Head, 
    occurrencesHead(Tail, Element, N1),
    N is N1 + 1.

% ΣΩΜΑ
occurrencesBody(List, Element, N) :-
    occurrencesHelper(List, Element, 0, N).
occurrencesHelper([], _, Acc, Acc).
occurrencesHelper([Element|Tail], Element, Acc, N) :-
    IncAcc is Acc + 1,
    occurrencesHelper(Tail, Element, IncAcc, N).
occurrencesHelper([Head|Tail], Element, Acc, N) :-
    dif(Head, Element),
    occurrencesHelper(Tail, Element, Acc, N).