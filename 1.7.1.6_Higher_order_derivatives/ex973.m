syms x;
y=exp(x)+2*exp(2*x)
e=diff(y,3)-6*diff(y,2)+11*diff(y)-6*y
simplify(e)