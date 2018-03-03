syms x;
y=4*x-x^2

ezplot(y,[-2,6]);
grid

sx=solve(y,x)

S=int(y,x,sx(1),sx(2))