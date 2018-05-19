% Вычислить
% I  = int (0;0)-(pi;pi) (x+y)dx+(x-y)dy
% по различным контурам, соединяющих точки
% O(0;0) and M(pi;pi)

syms x y dx dy real;
df=(x+y)*dx+(x-y)*dy
P=x+y
Q=x-y

dPy=diff(P,y)
% 1 
dQx=diff(Q,x)
% 1
% dPy=dQx

% 1) По прямой OM
y1=x
dy1=dx
df1=subs(df,[y dy],[y1 dy1])
% 2*dx*x
I1=int(df1/dx,x,0,pi)
% pi^2

% 2) По кривой y=x+sin(x)
y2=x+sin(x)
dy2=diff(y2)*dx
% (cos(x) + 1)*dx
df2=subs(df,[y dy],[y2 dy2])
df2=simplify(df2)
I2=int(df2/dx,x,0,pi)
% pi^2

% 3) По ломаной OPM, где P(pi;0)
% I1
y1=0
dy1=0
% 0<=x<=pi
df1=subs(df,[y dy],[y1 dy1])
% dx*x
I1=int(df1/dx,x,0,pi)
% pi^2/2

% I2
x2=sym(pi)
dx2=0
% 0<=y<=pi
df2=subs(df,[x dx],[x2 dx2])
% dy*(pi - y)
I2=int(df2/dy,y,0,pi)
% pi^2/2
I=I1+I2
% pi^2

% 4) По параболе y=x^2/sym(pi)
y4=x^2/sym(pi)
dy4=diff(y4)*dx
df4=subs(df,[y dy],[y4 dy4])
df4=simplify(df4)
I4=int(df4/dx,x,0,pi)
% pi^2


