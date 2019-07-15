clear
A=[6 -5 7 8;...
    3 11 2 4;...
    3 2 3 4;...
    1 1 1 0]
B=[3;6;1;0]
A1=[A,B]

ar=rank(A)
% 3
ar1=rank(A1)
% 4
% System incompatible