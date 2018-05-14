% Вычислить
% int (K) x^2*y*dy-y^2*x*dx
% если
% x=sqrt(cos(t)), y=sqrt(sin(t)), 0<=t<=pi/2

syms x y dx dy;
df=x^2*y*dy-y^2*x*dx

syms t dt;
x1=sqrt(cos(t))
y1=sqrt(sin(t))
dx1=diff(x1)*dt
dy1=diff(y1)*dt

df=subs(df,[x y dx dy],[x1 y1 dx1 dy1])
df=simplify(df)
% df=dt/2

I=int(df/dt,t,0,pi/2)
% pi/4