% Compute the integral
% int (C) y^2 ds,
% where C is the arc of the circle x = a*cos(t), y = a*sin(t), 0<=t<=pi/2

syms a t dt real;
x=a*cos(t)
y=a*sin(t)

ds=sqrt(diff(x)^2+diff(y)^2)*dt
ds=simplify(ds)
% dt*abs(a)
ds=a*dt

df=y^2*ds
% a^3*dt*sin(t)^2
I = int(df/dt,t,0,pi/2)
% (pi*a^3)/4
