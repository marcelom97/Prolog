% Άσκηση 5
% Θεωρήσατε το παρακάτω πρόγραμμα Prolog. Να φτιάξετε τη γραφική αναπαράσταση
% της δομής του προγράμματος χρησιμοποιώντας το μοντέλο ελέγχου ροής «κιβώτιο
% διαδικασίας ή κιβώτιο Byrd». Να κάνετε την ανίχνευση της εκτέλεσης του
% προγράμματός μέσω των θυρών του μοντέλου για τους στόχους «?-likes(anna,X).», «?-
% «?-likes(yannis,X)», «?-p(X,logic)». Στην ανίχνευση της εκτέλεσης κάθε στόχου να
% δείχνετε που γίνεται οπισθοδρόμηση. Να συγκρίνετε τα αποτελέσματα της ανίχνευσης.
likes(yannis,X) :- course(X), teaches(yannis,X).
likes(anna,X) :- teaches(yannis,X), \+ X = geometry.
likes(anna, physics).
teaches(yannis,algebra).
teaches(yannis,geometry).
teaches(yannis,logic).
course(physics).
course(chemistry).
course(geometry).
course(algebra).
course(logic).
