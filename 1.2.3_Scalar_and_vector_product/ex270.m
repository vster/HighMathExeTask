syms m real;
a=[m 1 0]
b=[3 -3 4]
% For what m are the vectors perpendicular?

ab=dot(a,b)
m=solve(ab==0)