% Вычислить криволинейный интеграл
% I = int (AB) (x^2-y^2)dx + x*y dy
% где AB - путь от A(1;1) до B(3;4)

syms x y dx dy;
df=(x^2-y^2)*dx + x*y*dy

syms t dt;
% Уравнение прямой AB
% (y-y1)/(y2-y1)=(x-x1)/(x2-x1)
% (y-1)/3=(x-1)/2
x1=2*t+1
y1=3*t+1
dx1=diff(x1)*dt
dy1=diff(y1)*dt
df=subs(df,[x y dx dy],[x1 y1 dx1 dy1])
df=simplify(df)
% dt*(8*t^2 + 11*t + 3)
I=int((8*t^2 + 11*t + 3),t,0,1)
% 67/6



