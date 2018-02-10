syms x;
y=sin(log(x))+cos(log(x))
e1=x^2*diff(y,x,2)+x*diff(y,x)+y
simplify(e1)