syms x real;
y=x^4-2*x^2+3
assume(x>=-3 & x<=2)
x1=-3
x2=2

ezplot(y)

y1=subs(y,x,x1)
y2=subs(y,x,x2)

dy=diff(y)
slv=solve(dy)

S=[slv,subs(y,x,slv)]

% y_max=66 y_min=2

