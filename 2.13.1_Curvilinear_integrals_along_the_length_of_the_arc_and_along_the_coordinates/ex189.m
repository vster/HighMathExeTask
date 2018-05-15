% Compute the curvilinear integral
% I = int (K) y*dx - (y+x^2)*dy
% where K - arc of a parabola y=2x-x^2,
% located above the axis 0x and traversed clockwise

syms x y dx dy
df=y*dx-(y+x^2)*dy

y1=2*x-x^2
dy1=diff(y1)*dx

df=subs(df,[y dy],[y1 dy1])
df=simplify(df)
% dx*x*(3*x - 2)
I=int(df/dx,x,0,2)
% 4