% ΚΕΦΑΛΗ 
evenNumbersHead([],[]).
evenNumbersHead([Head|Tail1], [Head|Tail2]):-
    Head mod 2 =:= 0,
    evenNumbersHead(Tail1, Tail2).
    % evenNumbersHead(Tail1, Tail2),
    % Head mod 2 =:= 0.                          
evenNumbersHead([Head|Tail], Even):- 
    Head mod 2 =\= 0,
    evenNumbersHead(Tail, Even).
    % evenNumbersHead(Tail, Even),
    % Head mod 2 =\= 0.

% ΣΩΜΑ
evenNumbersBody(List1,List2):-
    evenHelper(List1,[],List2).
evenHelper([],HelperList,List2):-
        List2 = HelperList.

evenHelper([Head|Tail],HelperList,List2):-
    Head mod 2 =:= 0,
    append(HelperList,[Head],NewList),
    evenHelper(Tail,NewList,List2).

evenHelper([Head|Tail],HelperList,List2):-
    Head mod 2 =\= 0,
    evenHelper(Tail,HelperList,List2).