% f=x+y
% I=int(int(f),R)
% y=x
% y=2*x
% x+y=2

% y-x=u
% y-2*x=v

% y=x => y-x=0 => u=0
% y=2*x => y-2*x=0 => v=0
% Заметим
% u-v=(y-x)-(y-2*x)=x
% Следовательно
% y=x+u=u-v+u=2*u-v

% x=u-v
% y=2*u-v

% Тогда
% x+y=2 => u-v+2*u-v=2 => 3*u-2*v=2 => v=3/2*u-1

% Если v=0, то u=2/3
% Если u=0, то v=-1

syms u v;
x=u-v
y=2*u-v

J=det([diff(x,u),diff(x,v);diff(y,u),diff(y,v)])
% 1
% Следовательно
% dx*dy=du*dv
I=int(int(x+y,v,3/2*u-1,0),u,0,2/3)
% 4/9