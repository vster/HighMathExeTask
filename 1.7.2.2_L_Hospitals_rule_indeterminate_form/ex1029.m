% 0/0
syms x
num=sin(3*x)-3*x*exp(x)+3*x^2
denom=atan(x)-sin(x)-x^3/6
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)