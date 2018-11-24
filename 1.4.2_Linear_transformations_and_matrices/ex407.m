% Find the characteristic numbers and eigenvectors of the matrix
clear
A=[5,2; 4,3]
syms lam
C=[5-lam,2;4,3-lam]
lam1=solve(det(C))
lam1.'
% [ 1, 7]

syms x1 x2
lam1=1
eqsys1=[(5-lam1)*x1+2*x2==0,4*x1+(3-lam1)*x2==0]
% [ 4*x1 + 2*x2 == 0, 4*x1 + 2*x2 == 0]
% 2*x1+x2=0

syms alfa
x1=alfa
x2=-2*alfa
% For characteristic numbers lam1=1 
%  eigenvector is R1=alfa*i-2*alfa*j

syms x1 x2
lam2=7
eqsys2=[(5-lam2)*x1+2*x2==0,4*x1+(3-lam2)*x2==0]
% [ 2*x2 - 2*x1 == 0, 4*x1 - 4*x2 == 0]
% x1-x2=0

syms beta
x1=beta
x2=beta
% For characteristic numbers lam2=7
%  eigenvector is R2=beta*i+beta*j

lambda=eig(A)

[V,D]=eig(A)
