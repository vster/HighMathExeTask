% Calculate the area of a quadrilateral with vertices
% A(6;1), B(4;5), C(1;6), D(-1;1).

% S=1/2*int (C) x*dy-y*dx
syms x y dx dy;
df=x*dy-y*dx

% AB
% (x-6)/(-2)=(y-1)/4
y1=-2*x+13
dy1=-2*dx
df1=subs(df,[y dy],[y1 dy1])
df1=simplify(df1)
% -13*dx
S1=1/2*int(df1/dx,x,6,4)
% 13

% BC
% (x-4)/(-3)=(y-5)
y2=-1/3*x+19/3
dy2=-1/3*dx
df2=subs(df,[y dy],[y2 dy2])
df2=simplify(df2)
% -(19*dx)/3
S2=1/2*int(df2/dx,x,4,1)
% 19/2

% CD
% (x-1)/-2=(y-6)/-5
y3=5/2*x+7/2
dy3=5/2*dx
df3=subs(df,[y dy],[y3 dy3])
df3=simplify(df3)
% -(7*dx)/2
S3=1/2*int(df3/dx,x,1,-1)
% 7/2

% DA
y4=1
dy4=0
df4=subs(df,[y dy],[y4 dy4])
df4=simplify(df4)
% -dx
S4=1/2*int(df4/dx,x,-1,6)
% -7/2

S=S1+S2+S3+S4
% 45/2