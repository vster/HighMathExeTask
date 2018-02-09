syms x
num=x^3-3*x^2+2
denom=x^3-4*x^2+3
limit(num/denom,x,1)
limit(diff(num,x)/diff(denom,x),x,1)