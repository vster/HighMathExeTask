syms x
y=1/3*x^2*sqrt(1-x^2)+2/3*sqrt(1-x^2)+x*asin(x)
Dy2=diff(y,2)
Dy2=simplify(Dy2)