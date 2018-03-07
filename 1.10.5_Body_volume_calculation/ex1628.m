syms x;
y1=64/(x^2+16)
y2=x^2/8
digits(3)

ezplot(y1)
hold on
ezplot(y2)
hold off

syms x y real;
slv=solve(y==64/(x^2+16),y==x^2/8)
slv.x

% -4 4
V=pi*int(y1^2-y2^2,-4,4)
vpa(V)