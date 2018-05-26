% Calculate the area of the shape bounded by the contour
% OABCO, if A(1;3), B(0;4), C(-1,2),O(0;0),
% AB - arc of parabola y=4-x^2

% S=1/2*int (C) x*dy-y*dx
syms x y dx dy;
df=x*dy-y*dx

% OA
y1=3*x
dy1=diff(y1)*dx
df1=subs(df,[y dy],[y1 dy1])
% 0
S1=1/2*int(df1/dx,x,0,1)
% 0

% AB
y2=4-x^2
dy2=diff(y2)*dx
df2=subs(df,[y dy],[y2 dy2])
df2=simplify(df2)
% -dx*(x^2 + 4)
S2=1/2*int(df2/dx,x,1,0)
% 13/6

% BC
y3=4+2*x
dy3=diff(y3)*dx
df3=subs(df,[y dy],[y3 dy3])
df3=simplify(df3)
% -4*dx
S3=1/2*int(df3/dx,x,0,-1)
% 2

% CO
y4=-2*x
dy4=diff(y4)*dx
df4=subs(df,[y dy],[y4 dy4])
df4=simplify(df4)
% 0
S4=1/2*int(df4/dx,x,-1,0)
% 0

S=S1+S2+S3+S4
% 25/6


