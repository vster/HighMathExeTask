syms x;
y1=x^2/2
y2=x^3/8
digits(4)

ezplot(y1)
hold on
ezplot(y2)
hold off

syms x y real;
slv=solve(y==x^2/2,y==x^3/8)
slv.x

% 0 4
syms x;
V=pi*int((x^2/2)^2-(x^3/8)^2,x,0,4)
vpa(V)