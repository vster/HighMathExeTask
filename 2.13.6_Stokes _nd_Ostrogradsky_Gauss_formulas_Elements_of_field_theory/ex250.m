% Find the potential of the Newtonian attraction field

syms x y m x0 y0 real;
% r=OA
r=sqrt(x^2+y^2)
F=m/r^2
P(x,y)=-m*x/(x^2+y^2)^(3/2)
% -(m*x)/(x^2 + y^2)^(3/2)
Q(x,y)=-m*y/(x^2+y^2)^(3/2)
% -(m*y)/(x^2 + y^2)^(3/2)

F=[P,Q,0]
rot_F=curl(F,[x y z])
% 0 0 0

P(x,y0)=subs(P,y,y0)
% -(m*x)/(x^2 + y0^2)^(3/2)

u(x,y)=int(P(x,y0),x,x0,x)+int(Q(x,y),y,y0,y)
% u(x,y)=int(-(m*x)/(x^2 + y0^2)^(3/2),x,x0,x)+...
%     int(-(m*y)/(x^2 + y^2)^(3/2),y,y0,y)
% m*(1/(x^2 + y^2)^(1/2) - 1/(x^2 + y0^2)^(1/2)) +
%      + m*(1/(x^2 + y0^2)^(1/2) - 1/(x0^2 + y0^2)^(1/2))
pretty(u(x,y))
u(x,y)=m*(1/(x^2 + y^2)^(1/2))- m*(1/(x0^2 + y0^2)^(1/2))




