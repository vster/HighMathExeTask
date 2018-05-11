% Вычислить криволинейный интеграл
% I = int (K) dy/x-dx/y 
% где K - 1 четверть окружности 
% x=r*cos(t), y=r*sin(t)

syms x y dx dy;
df=dy/x-dx/y

syms r t dt;
x1=r*cos(t)
y1=r*sin(t)
dx1=diff(x1,t)
dy1=diff(y1,t)
df=subs(df,[x y dx dy],[x1 y1 dx1 dy1])
% 2
I=int(df,t,0,pi/2)
% pi

