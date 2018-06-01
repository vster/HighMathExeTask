% Calculate the linear integral of the radius vector
% r=x*i+y*j+z*k
% along the arc of the helix
% x=R*cos(t),y=R*sin(t),z=a*t, if 0<=t<=2*pi

% Linear integral
% int (K) F*dr = int (K) P*dx+Q*dy+R*dz
% int (K) r*dr = int (K) x*dx+y*dy+z*dz

syms R t dt a real;
x=R*cos(t)
y=R*sin(t)
z=a*t
dx=diff(x,t)*dt
dy=diff(y,t)*dt
dz=diff(z,t)*dt

df=x*dx+y*dy+z*dz
% a^2*dt*t

I=int(df/dt,t,0,2*pi)
% 2*pi^2*a^2
