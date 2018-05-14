% Вычислить криволинейный интеграл
% I = int (K) x^2*y*dx+x^3*dy
% K - контур, ограниченный параболами
% y^2=x, x^2=y

syms x y dx dy;
df=x^2*y*dx+x^3*dy

% I1
y1=x^2
dy1=diff(y1)*dx
df1=subs(df,[y dy],[y1 dy1])
% 3*dx*x^4
I1=int(df1/dx,x,0,1)
% 3/5

% I2
y2=sqrt(x)
dy2=diff(y2)*dx
df2=subs(df,[y dy],[y2 dy2])
% (3*dx*x^(5/2))/2
I2=int(df2/dx,x,1,0)
% -3/7
I=I1+I2
% 6/35
