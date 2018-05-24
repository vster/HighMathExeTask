% Find the area of the shape
syms x;
y=4*x-x^2

ezplot(y,[-2,6]);
grid

sx=solve(y,x)
% 0,4

S=int(y,x,sx(1),sx(2))
% 32/3