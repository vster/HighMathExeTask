% ¬ычислить криволинейный интеграл
% I = int (K) 2x*dy-3y*dx
% где K - контур треугольника с вершинами
% A(1;2), B(3;1), C(2;5)

syms x y dx dy;
df=2*x*dy-3*y*dx;
% AB
% (y-y1)/(y2-y1)=(x-x1)/(x2-x1)
% (y-1)/-1=(x-1)/2 => y=-1/2*x+3/2
y1=-1/2*x+3/2
dy1=-1/2*dx

df1=subs(df,[y dy],[y1 dy1])
df1=simplify(df1)
% (dx*(x - 9))/2
I1=int(df1/dx,x,1,3)
% -7

% BC
% (y-1)/4=(x-3)/-1 => y=-4*x+13
y2=-4*x+13
dy2=-4*dx
df2=subs(df,[y dy],[y2 dy2])
df2=simplify(df2)
% dx*(4*x - 39)
I2=int(df2/dx,x,3,2)
% 29

% CA
% (y-5)/-3=(x-2)/-1 => y=3*x-1
y3=3*x-1
dy3=3*dx
df3=subs(df,[y dy],[y3 dy3])
df3=simplify(df3)
% -3*dx*(x - 1)
I3=int(df3/dx,x,2,1)
% 3/2
I=I1+I2+I3




