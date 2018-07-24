% Find the integral
% int_c(C) (z^2-y^2) dx + (x^2-z^2) dy + (y^2-x^2) dz 
% using the Stokes theorem. 
% The curve C is formed by the intersection of the paraboloid 
% z = 5-x^2-y^2 with the plane x + y + z = 1

syms x y z real;
P=z^2-y^2
Q=x^2-z^2
R=y^2-x^2
F=[P Q R]

N=[1 1 1]
n=sym(N/norm(N))
% [ 3^(1/2)/3, 3^(1/2)/3, 3^(1/2)/3]

rot_F=curl(F,[x y z])'
% [ 2*y + 2*z, 2*x + 2*z, 2*x + 2*y]

% int(C)F*dr  = int_int(S)rot_F*dS = int_int(S)rot_F*n*dS
f1=dot(rot_F,n)
% (3^(1/2)*(2*x + 2*y))/3 + (3^(1/2)*(2*x + 2*z))/3 + (3^(1/2)*(2*y + 2*z))/3
f1=simplify(f1)
% (4*3^(1/2)*(x + y + z))/3
% x+y+z=1
f1=(4*3^(1/2))/3
% I=f1*int_int(S)dS

z1=1-x-y
% int_int(S)dS=int_int(D(x,y))sqrt(1+diff(z1,x)^2+diff(z1,y)^2)

f2=sqrt(1+diff(z1,x)^2+diff(z1,y)^2)
% 3^(1/2)

% I=f1*f2*int_int(D(x,y)) dx dy = f1*f2*SD

% D(x,y)
% x+y+z=1
% z=5-x^2-y^2

% x+y+5-x^2-y^2=1 => x^2+y^2-x-y=4 => (x^2-x+1/4)+(y^2-y+1/4)=9/2 =>
%  (x-1/2)^2+(y-1/2)^2=(3/sqrt(2))^2
r=sym(3/sqrt(2))
SD=pi*r^2
% (9*pi)/2
I=f1*f2*SD
% 18*pi

