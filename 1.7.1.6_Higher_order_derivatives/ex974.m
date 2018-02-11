syms x;
y=x^3
e=diff(y,5)+diff(y,4)+diff(y,3)+diff(y,2)+diff(y)+y
simplify(e)