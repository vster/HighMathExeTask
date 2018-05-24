% Calculate the area bounded by an ellipse
% x=a*cos(t), y=b*sin(t)

% S=1/2*int (C) x*dy-y*dx
syms x y dx dy;
df=x*dy-y*dx

syms a b t dt;
x1=a*cos(t)
y1=b*sin(t)
dx1=diff(x1,t)*dt
dy1=diff(y1,t)*dt

df=subs(df,[x y dx dy],[x1 y1 dx1 dy1])
df=simplify(df)
% a*b*dt

S=1/2*int(df/dt,t,0,2*pi)
% pi*a*b