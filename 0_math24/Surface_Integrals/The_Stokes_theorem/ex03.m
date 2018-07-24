% Using the Stokes theorem, find the curvilinear integral
% int_c(C)y^3*dx-x^3*dy + z^3*dz. 
% The curve C is the intersection of the cylinder 
% x^2 + y^2 = a^2 and the plane x + y + z = b

syms x y z a b real;
p=x+y+z-b
P=y^3
Q=-x^3
R=z^3
F=[P Q R]
% [ y^3, -x^3, z^3]

N=[1 1 1]
n=sym(N/norm(N))

% int(C)F*dr  = int_int(S)rot_F*dS
rot_F=curl(F,[x y z])'
% [ 0, 0, - 3*x^2 - 3*y^2]
f1=simplify(dot(rot_F,n))
% -3^(1/2)*(x^2 + y^2) = -3^(1/2)*a^2
f1=-3^(1/2)*a^2

z1=b-x-y

% I = int_int(S)*dS = int_int(D(x,y))sqrt(1+diff(z,x)^2+diff(z,y)^2)*dx*dy

f2=sqrt(1+diff(z1,x)^2+diff(z1,y)^2)
% 3^(1/2)

% I1=int_int(D(x,y))dx*dy=pi*a^2
I1=pi*a^2

I=f1*f2*I1
% -3*pi*a^4


