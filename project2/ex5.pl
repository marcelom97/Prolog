% Άσκηση 5
% Γράψετε κατηγόρημα maxElement(L, Max) με mode(g,u) το οποίο είναι αληθές εάν το
% στοιχείο Max είναι το μέγιστο στοιχείο από τα στοιχεία της λίστας L. Θεωρήσατε ότι τα
% στοιχεία της λίστας είναι ακέραιοι αριθμοί. Να υλοποιήσετε το κατηγόρημα
% maxElement/2 με την τεχνική κατασκευής δομής στη κεφαλή πρότασης και με την
% τεχνική κατασκευής δομής στο σώμα πρότασης. Για την ερώτηση ?- maxElement([3, 2,
% 8, -5, 4], Μ). να επιστρέφει Μ=8, για την ερώτηση ?- maxElement([3, 2, 8, -5, 4], 8).
% να επιστρέφει αληθής και για την ερώτηση ?- maxElement([3, 2, 8, -5, 4], 4). να
% επιστρέφει ψευδής. 
% ΚΕΦΑΛΗ
maxElement([Max], Max).
maxElement([Head|Tail], Head) :-
    maxElement(Tail, Max),
    Head>Max.
maxElement([Head|Tail], Max) :-
    maxElement(Tail, Max),
    Head=<Max.

% ΣΩΜΑ
maxElement([Head|Tail], Max) :-
    maxElementHelper(Tail, Head, Max).
maxElementHelper([], M, M).
maxElementHelper([Head|Tail], M, Max) :-
    Head>M,
    maxElementHelper(Tail, Head, Max).
maxElementHelper([Head|Tail], M, Max) :-
    Head=<M,
    maxElementHelper(Tail, M, Max).