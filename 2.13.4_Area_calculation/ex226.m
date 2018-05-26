% Calculate the area bounded by the cardioid
% x=2*r*cos(t)-r*cos(2*t), y=2*r*sin(t)-r*sin(2*t)

% S=1/2*int (C) x*dy-y*dx
syms x y dx dy;
df=x*dy-y*dx

syms r t dt;
x1=2*r*cos(t)-r*cos(2*t)
y1=2*r*sin(t)-r*sin(2*t)
dx1=diff(x1,t)*dt
dy1=diff(y1,t)*dt

df=subs(df,[x y dx dy],[x1 y1 dx1 dy1])
df=simplify(df)
% -6*dt*r^2*(cos(t) - 1)

S=1/2*int(df/dt,t,0,2*pi)
% 6*pi*r^2