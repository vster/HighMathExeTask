% Applying the Green's formula, calculate
% I = int (C) -x^2*y*dx+x*y^2*dy
% where C - circle x^2+y^2=R^2

syms x y dx dy R real;
df1=-x^2*y*dx+x*y^2*dy
P=-x^2*y
Q=x*y^2

f2=diff(Q,x)-diff(P,y)
% x^2 + y^2

% I = int (C) -x^2*y*dx+x*y^2*dy = int int (D) (x^2 + y^2) dx*dy
syms ro teta real;
x1=ro*cos(teta)
y1=ro*sin(teta)
% 0<=teta<=2*pi
f2=subs(f2,[x y],[x1 y1])
f2=simplify(f2)
% ro^2
I = int(int(f2*ro,ro,0,R),teta,0,2*pi)
% (pi*R^4)/2


