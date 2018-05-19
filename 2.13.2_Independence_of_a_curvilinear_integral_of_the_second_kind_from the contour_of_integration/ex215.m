% Вычислить 
% I = int (K) x*dy+y*dx

syms x y dx dy real;
df=x*dy+y*dx
P=y
Q=x

dPy=diff(P,y)
% 1 
dQx=diff(Q,x)
% 1
% dPy=dQx

% 1) По окружности x=cos(t),y=sin(t)
syms t dt;
x1=cos(t)
y1=sin(t)
dx1=diff(x1)*dt
dy1=diff(y1)*dt
df1=subs(df,[x y dx dy],[x1 y1 dx1 dy1])
I=int(df1/dt,t,0,2*pi)
% 0

% 2) По контуру, ограниченному дугой параболы 
% y=x^2 и отрезком прямой y=1
y1=x^2
dy1=diff(y1)*dx
df1=subs(df,[y dy],[y1 dy1])
I1=int(df1/dx,x,-1,1)

y2=sym(1)
dy2=diff(y2)*dx
df2=subs(df,[y dy],[y2 dy2])
I2=int(df2/dx,x,1,-1)
I=I1+I2
% 0