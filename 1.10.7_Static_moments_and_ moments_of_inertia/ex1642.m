syms t a;
x=a*cos(t)^3
y=a*sin(t)^3

% ezplot(x/a,y/a)

% Mx=int(y,dL,0,pi/2)
dx=diff(x,t)
dy=diff(y,t)

c1=dx^2+dy^2
c1=factor(c1)
c1=simplify(c1)

dL=3*a*cos(t)*sin(t)
%dL=simplify(dL)
%pretty(dL)

% dL=3*a*sin(t)*cos(t) % Из примеров
f=simplify(y*dL)

Mx=int(f,0,pi/2)
My=Mx
% (3*a^2)/5

f=simplify(y^2*dL)
Ix=int(f,0,pi/2)
Iy=Ix
% (3*a^3)/8