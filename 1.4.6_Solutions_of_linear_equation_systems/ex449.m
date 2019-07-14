clear
A=[4 2 3;...
    2 8 -1;...
    9 1 8]
B=[-2;8;0]

ra=rank(A)
% 2
A1=[A B]
ra1=rank(A1)
% 3
% System incompatible