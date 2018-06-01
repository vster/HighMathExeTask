% Find the circulation of a vector
% F=-w*y*i+w*x*j
% in a circle
% x=a*cos(t),y=a*sin(t)
% in the positive direction

% The circulation of the vector field F(M) along the contour C
% C = int (C) F*d_r = int (C) P*dx+Q*dy+R*dz

% int (C) F*d_r = int (C) -w*y*dx+w*x*dy

syms x y dx dy w real;
P=-w*y
Q=w*x
df=P*dx+Q*dy
% dy*w*x - dx*w*y

syms a t dt;
x1=a*cos(t)
y1=a*sin(t)
dx1=diff(x1,t)*dt
dy1=diff(y1,t)*dt

df1=subs(df,[x y dx dy],[x1 y1 dx1 dy1])
% dt*w*a^2*cos(t)^2 + dt*w*a^2*sin(t)^2

I=int(df1/dt,t,0,2*pi)
% 2*pi*a^2*w

