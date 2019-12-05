% Άσκηση 2
% Γράψετε κατηγόρημα, one_occurrence(List1, List2) το οποίο είναι αληθές εάν η λίστα
% List2 περιέχει τα στοιχεία της λίστας List1 από μία φορά τα καθένα. Δηλαδή, το
% κατηγόρημα one_occurrence(List1, List2) σβήνει τα διπλά στοιχεία από την λίστα List1.
% Η υλοποίηση να γίνει και με τις δύο τεχνικές, κατασκευής δομής στη κεφαλή πρότασης
% και κατασκευής δομής στο σώμα πρότασης. Μπορείτε να χρησιμοποιήσετε το
% κατηγόρημα member/2 το οποίο ορίζεται στην Ενότητα 3.2.2 του βιβλίου σας. Για
% παράδειγμα, για την ερώτηση «?- one_occurrence([a, b, a, a, b, c, d, c], L).» θα πρέπει
% να επιστρέψει L = [a, b, c, d] και για την ερώτηση «?- one_occurrence([a, b, a, a, b, c, d,
% c], [a, b, c, d]).» θα πρέπει να επιστρέψει yes.

% ΚΕΦΑΛΗ 
% one_occurrence([],[]).
% one_occurrence([Head|Tail1], [Head|Tail2]):-
%     one_occurrence(Tail1, Tail2),
%     \+member(Head,Tail2).
% one_occurrence([Head|Tail1], Tail2):- 
%     one_occurrence(Tail1, Tail2),
%     member(Head,Tail2).
    
% ΣΩΜΑ
one_occurrence(L1, L2):-
    occHelper(L1,[],L2).
occHelper([],L2A,L2):-
    L2 = L2A.
occHelper([Head|Tail],L2A,L2):-
    \+member(Head,L2A),
    append(L2A,[Head],NEWL2A),
    occHelper(Tail,NEWL2A,L2).
occHelper([Head|Tail],L2A,L2):-
    member(Head,Tail),
    occHelper(Tail,L2A,L2).