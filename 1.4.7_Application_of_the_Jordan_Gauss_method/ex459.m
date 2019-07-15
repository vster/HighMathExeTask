clear
A=[1 5 -2 -3;
    7 2 -3 -4;...
    1 1 1 1;...
    2 3 2 -3;...
    1 -1 -1 -1]
B=[1;2;5;4;-2]

A1=[A,B]
ra=rank(A)
% 4
ra1=rank(A1)
% 5
% system incompatible