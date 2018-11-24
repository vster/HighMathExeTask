syms x y dx dy;
u=sin(x+cos(y))
D3u2x1y=diff(u,x,x,y)
% cos(x + cos(y))*sin(y)