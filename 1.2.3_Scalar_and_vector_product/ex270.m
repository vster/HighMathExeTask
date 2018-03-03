syms m real;
a=[m 1 0]
b=[3 -3 4]
% При каком m векторы перпендикулярны?

ab=dot(a,b)
m=solve(ab==0)