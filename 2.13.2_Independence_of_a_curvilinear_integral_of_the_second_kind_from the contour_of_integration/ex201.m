% I = int (1;1) (2;3) (x+3y)dx+(y+3x)dy

syms x y dx dy;
df=(x+3*y)*dx+(y+3*x)*dy
P=x+3*y
Q=y+3*x
dPy=diff(P,y)
% 3
dQx=diff(Q,x)
% 3
% dPy=dQx

% I1
y1=1
dy1=0
% 1<=x<=2
df1=subs(df,[y dy],[y1 dy1])
% dx*(x + 3)
I1=int(df1/dx,x,1,2)
% 9/2

% I2
x2=2
dx2=0
% 1<=y<=3
df2=subs(df,[x dx],[x2 dx2])
% dy*(y + 6)
I2=int(df2/dy,y,1,3)
% 16
I=I1+I2
% 41/2