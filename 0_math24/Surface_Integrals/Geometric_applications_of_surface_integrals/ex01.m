% Calculate the surface area of the paraboloid 
% z^2 = 25-x^2-y^2, 
% which lies above the Oxy plane.

syms x y z real;
z1=sqrt(25-x^2-y^2)

f=sqrt(1+diff(z1,x)^2+diff(z1,y)^2)
% (1 - y^2/(x^2 + y^2 - 25) - x^2/(x^2 + y^2 - 25))^(1/2)
f=simplify(f)
% 5*(-1/(x^2 + y^2 - 25))^(1/2)

syms r phi;
x1=r*cos(phi)
y1=r*sin(phi)
J=r

f=subs(f,[x y],[x1 y1])
f=simplify(f)
% 5*(-1/(r^2 - 25))^(1/2)

A=int(int(f*J,r,0,5),phi,0,2*pi)
% 50*pi