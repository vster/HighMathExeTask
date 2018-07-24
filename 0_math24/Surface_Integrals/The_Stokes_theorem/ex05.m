% Using the Stokes theorem, calculate the curvilinear integral
% int_c(C) (z-y) dx + (x-z) dy + (y-x) dz. 
% The curve C is a triangle with vertices A (2,0,0), B (0,2,0), D (0,0,2)

syms x y z real;
P=z-y
Q=x-z
R=y-x
F=[P Q R]
A=[2 0 0]
B=[0 2 0]
D=[0 0 2]

AB=B-A
%    -2     2     0
BD=D-B
%     0    -2     2
N=cross(AB,BD)
%     4     4     4
n=sym(N/norm(N))
% [ 3^(1/2)/3, 3^(1/2)/3, 3^(1/2)/3]

rot_F=curl(F,[x y z])'
% [ 2, 2, 2]

% int(C)F*dr  = int_int(S)rot_F*dS = int_int(S)rot_F*n*dS
f1=dot(rot_F,n)
% 2*3^(1/2)

SABD=sym(1/2*norm(cross(AB,BD)))
% 2*3^(1/2)

% I=int_int(S)rot_F*n*dS=f1*SABD
I=f1*SABD
% 12



