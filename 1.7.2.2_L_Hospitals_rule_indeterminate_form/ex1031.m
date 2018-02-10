% inf/inf
syms x n
n=2
num=log(x)
denom=x^n
limit(num/denom,x,inf)
limit(diff(num,x)/diff(denom,x),x,inf)