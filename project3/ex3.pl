% Άσκηση 3
% Το κατηγόρημα teaches(X,Y) είναι αληθές εάν ο καθηγητής Χ διδάσκει το μάθημα Υ.
% Θεωρήσατε ότι έχετε τα εξής γεγονότα «
% teaches(ioannou,logic).
% teaches(ioannou,statistics). 
% teaches(ioannou,algebra). 
% teaches(andreou,programming). 
% teaches(andreou,,compilers).». Να γράψετε κατηγόρημα print_teaches_courses(X) το
% οποίο είναι αληθές εάν εκτυπώνει με κατάλληλα μηνύματα τα μαθήματα που διδάσκει ο
% καθηγητής Χ. Η υλοποίηση του print_teaches_courses/1 να γίνει με οπισθοδρόμηση, να
% μη χρησιμοποιήσετε αναδρομή. 
teaches(ioannou, logic).
teaches(ioannou, statistics). 
teaches(ioannou, algebra). 
teaches(andreou, programming).
teaches(andreou, compilers).

print_teaches_courses(Teacher) :-
    teaches(Teacher, Leasson),
    write(Teacher),
    write(' teaches '),
    write(Leasson),
    write('\n'),
    fail.