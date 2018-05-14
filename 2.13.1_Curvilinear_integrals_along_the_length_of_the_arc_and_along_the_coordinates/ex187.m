% ¬ычислить криволинейный интеграл
% I = int (K) (x-y)^2 dx + (x+y)^2 dy
% где K - ломана€ OAB, O(0;0), A(2;0), B(4;2)

syms x y dx dy;
df=(x-y)^2*dx+(x+y)^2*dy

syms t dt;
% OA
% (y-y1)/(y2-y1)=(x-x1)/(x2-x1)
y1=0
x1=2*t 
% 0<=t<=1
dy1=0
dx1=2*dt
df1=subs(df,[x y dx dy],[x1 y1 dx1 dy1])
% 8*dt*t^2
I1=int(df1/dt,t,0,1)
% 8/3

% AB
% (y-0)/2=(x-2)/2
x2=2*t+2
y2=2*t
% 0<=t<=1
dx2=diff(x2)*dt
dy2=diff(y2)*dt
df2=subs(df,[x y dx dy],[x2 y2 dx2 dy2])
df2=simplify(df2)
% 8*dt + 2*dt*(4*t + 2)^2
I2=int(df2/dt,t,0,1)
% 128/3
I=I1+I2
% 136/3
