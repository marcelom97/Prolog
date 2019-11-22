% ΚΕΦΑΛΗ 
occHead([],[]).
occHead([Head|Tail1], [Head|Tail2]):-
    occHead(Tail1, Tail2),
    \+member(Head,Tail2).
occHead([Head|Tail1], Tail2):- 
    occHead(Tail1, Tail2),
    member(Head,Tail2).
    
% ΣΩΜΑ
occBody(L1, L2):-
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