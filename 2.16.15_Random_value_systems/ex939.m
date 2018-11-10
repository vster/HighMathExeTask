syms x y
f=a*sin(x+y)
% D: 0<=x<=pi/2, 0<=y<=pi/2
% 1) a
% 2) mx, my
% 3) sigx, sigy
% 4) rxy

% 1)
I1=int(int(f,x,0,pi/2),y,0,pi/2)
% 2*a 
f=subs(f,a,1/2)
% (a*sin(x + y))/2

% 2)
mx=int(int(x*f,x,0,pi/2),y,0,pi/2)
% pi/4
my=int(int(y*f,x,0,pi/2),y,0,pi/2)
% pi/4

% 3)
DX=int(int(x^2*f,x,0,pi/2),y,0,pi/2)-mx^2
% pi/2 + pi^2/16 - 2
DY=int(int(y^2*f,x,0,pi/2),y,0,pi/2)-my^2
% pi/2 + pi^2/16 - 2
sigx=sqrt(DX)
% (pi/2 + pi^2/16 - 2)^(1/2)
sigy=sqrt(DY)
% (pi/2 + pi^2/16 - 2)^(1/2)

% 4)
Cxy=int(int(x*y*f,x,0,pi/2),y,0,pi/2)-mx*my
% pi/2 - pi^2/16 - 1
rxy=simplify(Cxy/(sigx*sigy))
% -(pi - 4)^2/(8*pi + pi^2 - 32)
vpa(rxy)
% -0.2454