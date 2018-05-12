% I = int (OA) x*y*dx+y*z*dy+z*x*dz
% где OA - четверть окружности
% x=cos(t),y=sin(t),z=1

syms t dt;
x=cos(t)
y=sin(t)
z=sym(1)
dx=diff(x)*dt
dy=diff(y)*dt
dz=diff(z)*dt

df=x*y*dx+y*z*dy+z*x*dz
df=simplify(df)
% -(dt*sin(2*t)*(sin(t) - 1))/2
I=int(df/dt,t,0,pi/2)
% 1/6

