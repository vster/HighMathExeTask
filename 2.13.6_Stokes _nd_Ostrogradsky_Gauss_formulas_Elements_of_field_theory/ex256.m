% Find the flow vector
% F=x^3*i+y^3*j+z^3*k
% through the lateral surface of the cone
% x^2+y^2<=R^2/h^2*z^2, 0<=z<=h

syms x y z R h real;
F=[x^3,y^3,z^3]
S=x^2+y^2-R^2/h^2*z^2

f1=diff(F(1),x)+diff(F(2),y)+diff(F(3),z)
% 3*x^2 + 3*y^2 + 3*z^2

% Transition to cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;
J=ro;

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% 3*ro^2 + 3*z^2

S=subs(S,[x y z],[x1 y1 z1])
S=simplify(S)
% -(R^2*z^2 - h^2*ro^2)/h^2
% 0<=ro<=R/h*z

I=int(int(int(f1*J,ro,0,R/h*z),z,0,h),phi,0,2*pi)
% (3*pi*R^2*h*(R^2 + 2*h^2))/10

