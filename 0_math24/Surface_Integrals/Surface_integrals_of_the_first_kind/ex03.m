% Compute the integral 
% int_int(S)(x*y+y*z+z*x)*dS, 
% where S is the part of the cone z = sqrt(x^2 + y^2) inside the surface 
% x^2 + y^2 = 2*a*x.

% x^2-2*a*x+y^2=0 => (x-a)^2+y^2=a^2
% D - circle with center at point (a,0)

syms a x y dx dy real;
z=sqrt(x^2+y^2)
f1=x*y+y*z+z*x
% x*(x^2 + y^2)^(1/2) + y*(x^2 + y^2)^(1/2) + x*y
f2=x^2-2*a*x+y^2

dS=sqrt(1+diff(z,x)^2+diff(z,y)^2)
% (x^2/(x^2 + y^2) + y^2/(x^2 + y^2) + 1)^(1/2)
f3=f1*dS
f3=simplify(f3)
% 2^(1/2)*x*(x^2 + y^2)^(1/2) + 2^(1/2)*y*(x^2 + y^2)^(1/2) + 2^(1/2)*x*y

syms r phi real;
x1=r*cos(phi)
y1=r*sin(phi)
J=r

f2=subs(f2,[x y],[x1 y1])
% r^2*cos(phi)^2 + r^2*sin(phi)^2 - 2*a*r*cos(phi)
slv=solve(f2,r)
slv=simplify(slv)
% r=2*a*cos(phi)

% D:
% 0<=r<=2*a*cos(phi)
% -pi/2<=phi<=pi/2

f3=subs(f3,[x y],[x1 y1])
f3=simplify(f3)
% 2^(1/2)*abs(r)*(r*cos(phi) + r*sin(phi) + abs(r)*cos(phi)*sin(phi))

I=int(int(f3*J,r,0,2*a*cos(phi)),phi,-pi/2,pi/2)
% (64*2^(1/2)*a^4)/15