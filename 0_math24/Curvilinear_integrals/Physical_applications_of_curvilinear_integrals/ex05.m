% Find the work done by the field F (x, y) = (xy, x + y) as the body moves 
% from the origin O (0,0) to point A (1,1) along the path C, where
% 1. C is the line segment is y = x;
% 2. C is the curve y = sqrt(x)

% 1
syms x y dx dy;

% 1
% W1=int(C)F*dr=int(C)P*dx+Q*dy
y=x
P=x*y
Q=x+y
W1=int(P,x,0,1)+int(Q,x,0,1)
% 4/3

% 2
y=sqrt(x)
dy=diff(y,x)*dx
P=x*y
Q=x+y
df=P*dx+Q*dy
df=simplify(df)
% (dx*(x^(1/2) + 2*x^(3/2) + 1))/2
W2=int(df/dx,x,0,1)
% 37/30