likes(yannis, anna).
likes(eleni, yannis).
likes(manos, anna).
likes(yannis, manos).
likes(manos, eleni).
likes(anna, eleni).
likes(anna, manos).

p(yannis,likes,maths).
p(yannis,likes,physics).
p(yannis,plays,volleyball).
p(yannis,likes,basketball).

p(maria,likes,maths).
p(maria,likes,geography).
p(maria,plays,chess).
p(maria,plays,tennis).

% bagof(X,likes(X, Y),L).
% bagof((Y, L), bagof(X, likes(X, Y), L), LL).
% setof(X, likes(X, Y), L).
% setof(X, Y^likes(X, Y), L).
% setof((X, Z), p(X, Y, Z)^p(X, Y, Z), L).
% bagof(Z, p(X, Y, Z)^p(X, Y, Z), L).
% bagof(X, Y^likes(X, Y),L).
% bagof((X, Y), Y^likes(X, Y), L).