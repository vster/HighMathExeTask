syms a b l;

% l=2*(a+b)
a=l/2-b

S=(l/2-b)*b

dS=diff(S,b)

sl=solve(dS,b)

% l/4 - сторона квадрата