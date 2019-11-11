% % % ΚΕΦΑΛΗ
% occ([], []).
% occ([H1|T1], L2):-
%     occ(T1, L2).
% occ([H1|T1], L2):-
%     member(H1, L2),
%     occ(T1, L2),
%     L2 = [H1|[L2]].
    
% % ΣΩΜΑ
% occ(L1, L2):-
%     occ1(L1,[],L2).
% occ1([],L2A,L2):-
%     L2 = L2A.
% occ1([Head|Tail],L2A,L2):-
%     member(Head,Tail),
%     NEWL2A = L2A,
%     occ1(Tail,NEWL2A,L2).