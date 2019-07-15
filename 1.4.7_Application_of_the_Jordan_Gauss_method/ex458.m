clear
A=[-1 1 1 -1;...
    1 2 -2 -1;...
    2 -1 -3 2;...
    1 2 3 -6]
B=[-2;-5;-1;-10]

A1=[A,B]

ra=rank(A)
% 3
ra1=rank(A1)
% 4
syms x1 x2 x3 x4
eq1=-x1+x2+x3-x4+2
eq2=x1+2*x2-2*x3-x4+5
eq3=2*x1-x2-3*x3+2*x4+1
eq4=x1+2*x2+3*x3-6*x4+10
[x2 x3 x4]=solve([eq1 eq2 eq3],[x2 x3 x4])
