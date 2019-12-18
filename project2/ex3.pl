% Άσκηση 3
% Γράψετε κατηγόρημα occurrences(L, X, N) το οποίο είναι αληθές εάν Ν είναι το πλήθος
% των επαναλήψεων του στοιχείου Χ στην λίστα L. Η υλοποίηση να γίνει και με τις δύο
% τεχνικές, κατασκευής δομής στη κεφαλή πρότασης και κατασκευής δομής στο σώμα
% πρότασης.

% ΚΕΦΑΛΗ
occurrences([], _, 0).
occurrences([Head|Tail], Element, N) :-
    dif(Element, Head),
    occurrences(Tail, Element, N).
occurrences([Head|Tail], Element, N) :-
    Element=Head,
    occurrences(Tail, Element, N1),
    N is N1+1.

% ΣΩΜΑ
occurrences(List, Element, N) :-
    occurrencesHelper(List, Element, 0, N).
occurrencesHelper([], _, Acc, Acc).
occurrencesHelper([Element|Tail], Element, Acc, N) :-
    IncAcc is Acc+1,
    occurrencesHelper(Tail, Element, IncAcc, N).
occurrencesHelper([Head|Tail], Element, Acc, N) :-
    dif(Head, Element),
    occurrencesHelper(Tail, Element, Acc, N).