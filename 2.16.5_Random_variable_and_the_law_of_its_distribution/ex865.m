syms x
F(x)=piecewise(x<2,0,2<=x<=3,(x-2)^2,x>3,1)
f(x)=diff(F(x))
% piecewise(x < 2, 0, x in Dom::Interval(2, 3), 2*x - 4, 3 < x, 0)