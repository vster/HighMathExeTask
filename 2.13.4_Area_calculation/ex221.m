% Calculate the area bounded by the astroid
% x=a*cos(t)^3,y=a*sin(t)^3

% S=1/2*int (C) x*dy-y*dx
syms x y dx dy;
df=x*dy-y*dx

syms a t dt;
x1=a*cos(t)^3
y1=a*sin(t)^3
dx1=diff(x1,t)*dt
dy1=diff(y1,t)*dt

df=subs(df,[x y dx dy],[x1 y1 dx1 dy1])
df=simplify(df)
% -(3*a^2*dt*(cos(4*t) - 1))/8

S=1/2*int(df/dt,t,0,2*pi)
% (3*pi*a^2)/8