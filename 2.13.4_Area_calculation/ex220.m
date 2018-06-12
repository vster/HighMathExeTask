% Area of a figure
% S = 1/2*int (C) x*dy-y*dx

% Calculate the area of a figure bounded by curves
% y=x^2, x=y^2, 8*x*y=1

syms x y dy dx real;
df=x*dy-y*dx
slv=solve(y==x^2,8*x*y==1)
A=[slv.x,slv.y]
% [ 1/2, 1/4]
slv=solve(y^2==x,8*x*y==1)
B=[slv.x,slv.y]
% [ 1/4, 1/2]

% S = 1/2 int (OA) x*dy-y*dx + 1/2 int (AB) x*dy-y*dx +
%    + 1/2 int (BO) x*dy-y*dx

% OA
y1=x^2
dy1=diff(y1)*dx
df1=subs(df,[y dy],[y1 dy1])
% dx*x^2
S1=1/2*int(df1/dx,x,0,1/2)
% 1/48

% AB
y2=1/(8*x)
dy2=diff(y2)*dx
df2=subs(df,[y dy],[y2 dy2])
% -dx/(4*x)
S2=1/2*int(df2/dx,x,1/2,1/4)
% log(2)/8

% BO
y3=sqrt(x)
dy3=diff(y3)*dx
df3=subs(df,[y dy],[y3 dy3])
% -(dx*x^(1/2))/2
S3=1/2*int(df3/dx,x,1/4,0)
% 1/48

S=S1+S2+S3
% log(2)/8 + 1/24

vpa(S)
% 00.128




