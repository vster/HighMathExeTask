% Find the characteristic numbers and eigenvectors of the matrix
clear
A=[7,4; 5,6]
syms lam
E=eye(2)
C=A-lam*E
lam1=solve(det(C))
lam1.'
% [ 2, 11]

syms x1 x2
lam1=2
C1=subs(C,lam,2)
% 5*x1+4*x2=0

syms alfa
x1=alfa
x2=-5/4*alfa
% For characteristic numbers lam1=2
%  eigenvector is R1=4*alfa*i-5*alfa*j

syms x1 x2
lam2=11
C2=subs(C,lam,11)
% x1-x2=0

syms beta
x1=beta
x2=beta
% For characteristic numbers lam2=11
%  eigenvector is R1=beta*i+beta*j

lambda=eig(A)

[V,D]=eig(A)