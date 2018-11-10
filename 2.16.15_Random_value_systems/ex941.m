syms x y a
f=a*x*y
% D: x+y-1=0,x=0,y=0
% 1) a
% 2) mx, my
% 3) sigx, sigy
% 4) rxy

% 1)
I1=int(int(f,x,0,1-y),y,0,1)
% a/24=1 => a=24
f=subs(f,a,24)
% 24*x*y

% 2)
mx=int(int(x*f,x,0,1-y),y,0,1)
% 2/5
my=int(int(y*f,x,0,1-y),y,0,1)
% 2/5

% 3)
DX=int(int(x^2*f,x,0,1-y),y,0,1)-mx^2
% 1/25
DY=int(int(y^2*f,x,0,1-y),y,0,1)-my^2
% 1/25
sigx=sqrt(DX)
% 1/5
sigy=sqrt(DY)
% 1/5

% 4)
Cxy=int(int(x*y*f,x,0,1-y),y,0,1)-mx*my
% -2/75
rxy=simplify(Cxy/(sigx*sigy))
% -2/3
vpa(rxy)
% -0.6667

