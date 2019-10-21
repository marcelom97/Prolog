% Να αναπαραστήσετε ως ένα σύνθετο όρο της Prolog τα βασικά στοιχεία των
% σπουδαστών των Ανώτατων Εκπαιδευτικών Ιδρυμάτων (ΑΕΙ). Ο σύνθετος όρος να
% περιέχει τον αριθμό μητρώου (μέχρι 5 ψηφία), ονοματεπώνυμο (όνομα και επώνυμο), τη
% διεύθυνση διαμονή του (οδός, αριθμός, ταχυδρομικός κώδικας και πόλη) και
% λεπτομέρειες για τις σπουδές του (όνομα ΑΕΙ, σχολή, τμήμα, κατεύθυνση). Το
% κατηγόρημα student(X) είναι αληθές εάν X είναι βασικά στοιχεία ενός φοιτητή. Να
% φτιάξετε 5 γεγονότα του student/1 με ορίσματα στιγμιότυπα του παραπάνω σύνθετου
% όρου. Τέλος, να φτιάξετε στόχους οι οποίοι θα σας επιστρέφουν τα εξής αποτελέσματα:
% α) τους φοιτητές που σπουδάζουν Πληροφορική, β) τους φοιτητές που σπουδάζουν σε
% ΑΕΙ του Ηρακλείου, και γ) όλα τα στοιχεία του φοιτητή με αριθμό μητρώου 00001. 

% student(AM,fullname(Firstname, Lastname),address(Odos,Arithmos,Tk,Poli),spoudes(Onoma,Sxolh,Tmhma,Kateuthinsi)).

student(00001,fullname(marcelo, mollaj),address(minoos,42,73103,irakleio),spoudes(teicrete,stef,pliroforiki,software)).
student(00002,fullname(ilias, loure),address(kaminia,65,45452,rethimno),spoudes(teicrete,stef,pliroforiki,network)).
student(00003,fullname(vasilis, mastrokostas),address(minoos,88,73104,aliveri),spoudes(teicrete,stef,pliroforiki,network)).
student(00004,fullname(kostas, stergianis),address(estavromenous,11,68101,kavala),spoudes(teicrete,sdo,dioikisi,logistika)).
student(00005,fullname(gianis, karagiannidis),address(stamatiou,11,25250,komotini),spoudes(teicrete,stef,pliroforiki,hardware)).