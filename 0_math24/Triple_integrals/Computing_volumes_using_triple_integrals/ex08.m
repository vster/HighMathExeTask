% Calculate the volume of the body bounded by the paraboloid z = 2-x^2-y^2 
% and the conical surface z = sqrt(x^2 + y^2)

syms x y z real;
f1=2-x^2-y^2-z
f2=sqrt(x^2+y^2)-z

% 2-x^2-y^2==sqrt(x^2+y^2)
% Let x^2+y^2=t^2 then 2-t^2=t => t^2+t-2=0
syms t
slv=solve(t^2+t-2==0)
% -2;1
% x^2+y^2=1

% Transition to cylindrical coordinates
syms ro phi z;
x1=ro*cos(phi);
y1=ro*sin(phi);
z1=z;
J=ro

f1=subs(f1,[x y z],[x1 y1 z1])
f1=simplify(f1)
% - ro^2 - z + 2 => z=2-ro^2

f2=subs(f2,[x y z],[x1 y1 z1])
f2=simplify(f2)
% (ro^2)^(1/2) - z => z=ro

V=int(int(int(J,z,ro,2-ro^2),ro,0,1),phi,0,2*pi)
% (5*pi)/6
% In solution on site error! (int z must be from ro to 2-ro^2)