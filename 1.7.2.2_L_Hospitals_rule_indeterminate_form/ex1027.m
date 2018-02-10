syms x
num=2-(exp(x)+exp(-x))*cos(x)
denom=x^4
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)