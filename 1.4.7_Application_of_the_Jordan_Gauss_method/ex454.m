clear
A=[1 1 -2 1;...
    1 -3 1 1;...
    4 -1 -1 -1;...
    4 3 -4 -1]
B=[1;0;1;2]

A1=[A,B]

ar=rank(A)
% 3
ar1=rank(A1)
% 3

syms x1 x2 x3 x4
eq1=x1+x2-2*x3+x4-1
eq2=x1-3*x2+x3+x4
eq3=4*x1-x2-x3-x4-1
eq4=4*x1+3*x2-4*x3-x4-2

[x1 x2 x4]=solve([eq1 eq2 eq3],[x1 x2 x4])