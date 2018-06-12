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
V=pi*int(y1^2-y2^2,x,0,4)
% (512*pi)/35 - ? correct 4*pi/325 - ?
vpa(V)