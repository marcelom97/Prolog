kb(giannis,likes,maths).
kb(giannis,likes,physics).
kb(giannis,plays,voleyball).
kb(giannis,plays,chess).
kb(giannis,plays,backetball).
kb(maria,likes,maths).
kb(maria,likes,geography).
kb(maria,plays,chess).
kb(maria,plays,tennis).
kb(eleni,likes,physics).
kb(eleni,likes,informatics).
kb(eleni,plays,voleyball).
kb(eleni,plays,tennis).
%--------------------------------------------------------
collect_results:-
    write('1 gia anagnosi onomatos'),nl,
    write('2 gia anagnosi mathimatos'),nl,
    write('3 gia anagnosi paixnidiou'),nl,
    write('4 gia anagnosi rimatos opws likes, plays'),nl,
    write('5 gia exit'),nl,
    read(Option),
    optionChooses(Option).
%--------------------------------------------------------
optionChooses(Option):-
    Option =:= 1, read_name.
optionChooses(Option):-
    Option =:= 2, read_lesson.
optionChooses(Option):-
    Option =:= 3, read_game.
optionChooses(Option):-
    Option =:= 4, read_action.
optionChooses(Option):-
    Option =:= 5, fail. 
%--------------------------------------------------------
read_name:-
    write('Dwse onoma:'),nl,
    read(Name),
    bagof((Name,Y,Z),kb(Name,Y,Z),L),
    write(L).
%--------------------------------------------------------
read_lesson:-
    write('Dwse mathima:'),nl,
    read(Lesson),
    bagof((X),kb(X,likes,Lesson),L),
    write(L).
%--------------------------------------------------------
read_game:-
    write('Dwse paixnidi:'),nl,
    read(Game),    
    bagof((X),kb(X,plays,Game),L),
    write(L).
%--------------------------------------------------------
read_action:-
    write('Dwse rima:'),nl,
    read(Action),
    bagof((X,Z),kb(X,Action,Z),L),
    write(L).