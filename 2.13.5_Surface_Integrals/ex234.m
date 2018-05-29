% Calculate 
% int int (S) x*y*z dS, where S - part of the surface 
% z=x^2+y^2 located between the planes z=0 and z=1.

% I = int int (S) F(x,y,z) dS = 
%   = int int (D) F(x,y,f(x,y))*sqrt(1+diff(z,x)^2+diff(z,y)^2)*dx*dy
syms x y dx dy real;
z=x^2+y^2
dzx=diff(z,x)
dzy=diff(z,y)
dS=sqrt(1+dzx^2+dzy^2)*dx*dy
dS=simplify(dS)
% dx*dy*(4*x^2 + 4*y^2 + 1)^(1/2)

% I = int int (S) x*y*z dS =
%  = int int (D) x*y*(x^2+y^2)*(4*x^2 + 4*y^2 + 1)^(1/2)*dx*dy
f1=x*y*(x^2+y^2)*(4*x^2 + 4*y^2 + 1)^(1/2)
% D: circle x^2+y^2<=1
f2=x^2+y^2-1

syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)

f1=subs(f1,[x y],[x1 y1])
f1=simplify(f1)
% (ro^4*sin(2*teta)*(4*ro^2 + 1)^(1/2))/2

f2=subs(f2,[x y],[x1 y1])
f2=simplify(f2)
% 0<=ro<=1

I=4*int(int(f1*ro,ro,0,1),teta,0,pi/2)
% (25*5^(1/2))/84 - 1/420