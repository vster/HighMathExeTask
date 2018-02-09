syms x
y=2/3*x^5-1/9*x^3
dy=simplify(diff(y))
alpha=atan(subs(dy,x,1))
digits(5)
vpa(alpha*180/pi)