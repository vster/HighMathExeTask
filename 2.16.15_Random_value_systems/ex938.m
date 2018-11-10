syms x y a
f=a*(x+y)
% D: x=0,x=3,y=0,y=3
% 1) a
% 2) P(x,y),x=1,x=2,y=1,y=2
% 3) mx, my
% 4) sigx, sigy

% 1)
I1=int(int(f,x,0,3),y,0,3)
% 27*a=1 => a=1/27

% 2)
f=1/27*(x+y)
P=int(int(f,x,1,2),y,1,2)
% 1/9

% 3)
mx=int(int(x*f,x,0,3),y,0,3)
% 7/4
my=int(int(y*f,x,0,3),y,0,3)
% 7/4

% 4)
DX=int(int((x-mx)^2*f,x,0,3),y,0,3)
% 11/16
DY=int(int((y-my)^2*f,x,0,3),y,0,3)
% 11/16
sigx=sqrt(DX)
% 11^(1/2)/4
sigy=sqrt(DY)
% 11^(1/2)/4