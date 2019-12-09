% save_KB:- see('C:/prolog-files/Prolog/project4/kb_old.pl'), transfer_data, seen.

save_KB:-
    tell('kb.pl'),
    see('kb_old.pl'),
    transfer_data,
    seen,
    told.

transfer_data:-
    read(X),
    \+(X = end_of_file),
    write(X),
    write('.'),
    write('\n'),
    transfer_data.

transfer_data.