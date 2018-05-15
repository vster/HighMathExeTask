% Compute the curvilinear integral
% I = int (K) y*dx+2x*dy
% where K - runs contour of the rhombus against the clockwise direction
% x/3+y/2=+-1, x/3-y/2=+/1

syms x y dx dy;
df=y*dx+2*x*dy

% I1
y1=-2/3*x+2
dy1=diff(y1)*dx
df1=subs(df,[y dy],[y1 dy1])
df1=simplify(df1)
% -dx*(2*x - 1)
I1=int(df1/dx,x,3,0)
% 3

% I2
y2=2/3*x-2
dy2=diff(y2)*dx
df2=subs(df,[y dy],[y2 dy2])
df2=simplify(df2)
% (2*x - 1)
I2=int(df2/dx,x,0,3)
% 3

% I3
y3=-2/3*x-2
dy3=diff(y3)*dx
df3=subs(df,[y dy],[y3 dy3])
df3=simplify(df3)
% -dx*(2*x + 1)
I3=int(df3/dx,x,-3,0)
% 3

% I4
y4=2/3*x+2
dy4=diff(y4)*dx
df4=subs(df,[y dy],[y4 dy4])
df4=simplify(df4)
% dx*(2*x + 1)
I4=int(df4/dx,x,0,-3)
% 3
I=I1+I2+I3+I4
% 12




