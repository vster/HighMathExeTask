% Find the mass of the parabolic shell given by the equation 
% z = x^2 + y^2, 0<=z<=1 
% and having the density 
% mu (x, y, z) = z.

syms x y z real;
z1=x^2+y^2
mu=z1

% m = int_int (S) mu(x,y) dS = int_int (S) z*dS = 
%   = int_int (D(x,y)) z*sqrt(1+diff(z,x)^2+diff(z,y)^2) dxdy

f=z1*sqrt(1+diff(z1,x)^2+diff(z1,y)^2)
% (x^2 + y^2)*(4*x^2 + 4*y^2 + 1)^(1/2)

syms r phi real;
x1=r*cos(phi)
y1=r*sin(phi)
J=r

f1=subs(f,[x y],[x1 y1])
f1=simplify(f1)
% r^2*(4*r^2 + 1)^(1/2)

m=int(int(f1*J,r,0,1),phi,0,2*pi)
% (pi*(25*5^(1/2) + 1))/60


