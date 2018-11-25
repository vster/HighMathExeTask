% Find the characteristic numbers and eigenvectors of the matrix
A=[1 1 3;...
   1 5 1;...
   3 1 1]
I=eye(3)
lam
C=A-lam*I
lam1=solve(det(C))
lam1.'
% [ -2, 3, 6]

% lam=-2
C1=subs(C,lam,-2)
% x1=alfa,x2=0,x3=-alfa
% R1=[alfa,0,-alfa]

% lam=3
C2=subs(C,lam,3)
% R2=[beta,-beta,beta]

% lam=6
C3=subs(C,lam,6)
% R3=[gam,2*gam,gam]

lambda=eig(A)
lambda.'
%    -2.0000    3.0000    6.0000
[V,D]=eig(A)
