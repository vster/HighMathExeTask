syms x
num=x-sin(x)
denom=x^3
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)