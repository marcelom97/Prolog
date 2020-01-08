update_KB :-
    nl,
    write('----------MENU----------'),
    nl,
    write('1 gia allagi mias egrafis'),
    nl,
    write('2 gia dimiourgeia mias egrafis'),
    nl,
    write('3 gia diagrafi mias egrafis'),
    nl,
    write('Otidipote allo gia exit'),
    nl,
    read(Option),
    optionChooses(Option),
    update_KB.
%--------------------------------------------------------
<<<<<<< HEAD
optionChooses(Option):-
    Option =:= 1, update_record.
optionChooses(Option):-
    Option =:= 2, create_record.
optionChooses(Option):-
    Option =:= 3, delete_record.
optionChooses(Option):-
    Option > 3; 
    Option < 1,
=======
optionChooses(Option) :-
    Option=:=1,
    update_record.
optionChooses(Option) :-
    Option=:=2,
    create_record.
optionChooses(Option) :-
    Option=:=3,
    delete_record.
optionChooses(Option) :-
    Option>3,
    Option<1,
>>>>>>> dbbad6c87ae339a56e41419778a87dccf72022a2
    fail.
%--------------------------------------------------------
update_record :-
    see('kb.pl'),
    print_base,
    seen,
    write('Dwse to id pou theleis na allakseis:'),
    read(Id),
    nl,
    consult('kb.pl'),
    retract(student(Id, _)),
    write('Dwse neo onoma :'),
    read(On),
    nl,
    write('Dwse neo tmhma :'),
    read(Tm),
    nl,
    write('Dwse neo thlefwno :'),
    read(Thl),
    nl,
    write('Dwse nea lista mathimatwn :'),
    read(L),
    nl,
    tell('kb.pl'),
    asserta(student(Id, [On, Tm, Thl, L])),
    write(':- dynamic max_student_id/1, students/1, student/2.'),
    nl,
    listing(max_student_id),
    listing(students),
    listing(student),
    told.
%--------------------------------------------------------
create_record :-
    write('Dwse onoma :'),
    read(On),
    nl,
    write('Dwse tmhma :'),
    read(Tm),
    nl,
    write('Dwse thlefwno :'),
    read(Thl),
    nl,
    write('Dwse lista mathimatwn :'),
    read(L),
    nl,
    consult('kb.pl'),
    max_student_id(ID),
    retract(max_student_id(ID)),
    retract(students(IDList)),
    IDnew is ID+1,
    tell('kb.pl'),
    append(IDList, [IDnew], NewList),
    asserta(students(NewList)),
    asserta(max_student_id(IDnew)),
    asserta(student(IDnew, [On, Tm, Thl, L])),
    write(':- dynamic max_student_id/1, students/1, student/2.'),
    nl,
    listing(max_student_id),
    listing(students),
    listing(student),
    told.
%--------------------------------------------------------
delete_record :-
    write('Dwse mou to Id pou 8es na diagrapis :'),
    read(Z),
    write('tha diagrapsi to :'),
    write(Z),
    consult('kb.pl'),
    max_student_id(ID),
    retract(max_student_id(ID)),
    retract(students(IDList)),
    IDnew is ID-1,
    tell('kb.pl'),
    delete(Z, IDList, NewIdList),
    asserta(max_student_id(IDnew)),
    asserta(students(NewIdList)),
    retract(student(Z, _)),
    write(':- dynamic max_student_id/1, students/1, student/2.'),
    nl,
    listing(max_student_id),
    listing(students),
    listing(student),
    told.
%--------------------------------------------------------
print_base :-
    read(X),
    \+ X=end_of_file,
    write(X),
    write('.'),
    nl,
    print_base.
print_base.

delete(Element, [Element|Tail], Tail).

delete(Element, [Head|Tail], [Head|Tail1]) :-
    delete(Element, Tail, Tail1).