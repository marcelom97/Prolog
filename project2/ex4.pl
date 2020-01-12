% Άσκηση 4
% Γράψετε κατηγόρημα evenΝumbers(L1,L2) το οποίο είναι αληθές εάν η λίστα L1
% περιέχει τυχαίους ακεραίους αριθμούς και η λίστα L2 περιέχει τους άρτιους ακέραιους
% αριθμούς της λίστας L1. Η υλοποίηση να γίνει και με τις δύο τεχνικές, κατασκευής δομής
% στη κεφαλή πρότασης και κατασκευής δομής στο σώμα πρότασης. Για το στόχο «?-
% evenΝumbers([2,1,-3,6,8,9],L2).» το πρόγραμμα σας να επιστρέφει L2 = [2,6,8].

% ΚΕΦΑΛΗ 
evenNumbers([], []).
evenNumbers([Head|Tail1], [Head|Tail2]) :-
    Head mod 2=:=0,
    evenNumbers(Tail1, Tail2).                    
evenNumbers([Head|Tail], Even) :-
    Head mod 2=\=0,
    evenNumbers(Tail, Even).

% ΣΩΜΑ
evenNumbers(List1, List2) :-
    evenHelper(List1, [], List2).
evenHelper([], HelperList, List2) :-
    List2=HelperList.
evenHelper([Head|Tail], HelperList, List2) :-
    Head mod 2=:=0,
    append(HelperList, [Head], NewList),
    evenHelper(Tail, NewList, List2).
evenHelper([Head|Tail], HelperList, List2) :-
    Head mod 2=\=0,
    evenHelper(Tail, HelperList, List2).