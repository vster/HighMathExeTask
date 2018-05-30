% Calculate 
% I = int int (S) (x^2+y^2) dS
% where S - part of the conical surface 
% z^2=x^2+y^2
% enclosed between the planes z=0 and z=1

% I = int int (S) F(x,y,z) dS = 
%   = int int (D) F(x,y,f(x,y))*sqrt(1+diff(z,x)^2+diff(z,y)^2)*dx*dy
syms x y dx dy real;
z=sqrt(x^2+y^2)
dzx=diff(z,x)
dzy=diff(z,y)
dS=sqrt(1+dzx^2+dzy^2)*dx*dy
dS=simplify(dS)
% 2^(1/2)*dx*dy
% I = int int (D) (x^2+y^2)*2^(1/2)*dx*dy
f1=(x^2+y^2)*2^(1/2)
% D: circle x^2+y^2<=1
f2=x^2+y^2-1

syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
J=ro

f1=subs(f1,[x y],[x1 y1])
f1=simplify(f1)
% 2^(1/2)*ro^2

f2=subs(f2,[x y],[x1 y1])
f2=simplify(f2)
%  ro<=1

I=4*int(int(f1*J,ro,0,1),teta,0,pi/2)
% (pi*2^(1/2))/2