% I= int int dx*dy
% R:
% y^2=2*x
% y^2=3*x
% x*y=1
% x*y=2

% Замена переменных
% u=y^2/x
% v=x*y

% y^2=2*x => y^2/x=2 => u=2
% y^2=3*x => y^2/x=3 => u=3
% x*y=1 => v=1
% x*y=2 => v=2
clear
syms u v;
syms x y;
% slv=solve(u==y^2/x,v==x*y,[x y])
% x=slv.x(1)
x=(u*v)^(2/3)/u
% y=slv.y(1)
y=(u*v)^(1/3)

% Находим якобиан
J=det([diff(x,u),diff(x,v);diff(y,u),diff(y,v)])
% -1/(3*u)
% dx*dy=du*dv/(3*u)
I=int(int(1/(3*u),v,1,2),u,2,3)
% log(3/2)/3