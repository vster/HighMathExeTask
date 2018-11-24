% Find the characteristic numbers and eigenvectors of the matrix
A=[3 -1 1;...
   -1 5 -1;...
   1 -1 3]
I=eye(3)
lam
C=A-lam*I
lam1=solve(det(C))
lam1.'
% [ 2, 3, 6]

% lam=2
C1=subs(C,lam,2)
syms x1 x2 x3
eqsys1=[x1-x2+x1==0,-x1+3*x2-x3==0,x1-x2+x3==0]
% x2=0,x3=-x1
% x1=alfa
% R1=alfa*i-alfa*k

% lam=3
C2=subs(C,lam,3)
% x1=x2=x3=beta
% R2=beta*i+beta*j+beta*k

% lam=6
C3=subs(C,lam,6)
% R3=gamma*(i-2*j+k)

lambda=eig(A)
lambda.'
%    2.0000    3.0000    6.0000
[V,D]=eig(A)
