syms x y dx dy;
u=(x^4-8*x*y^3)/(x-2*y)
D3u2xyu=simplify(diff(u,x,x,y))
% 4