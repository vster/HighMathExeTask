syms x
num=x*exp(x/2)
denom=exp(x)
limit(num/denom,x,inf)
limit(diff(num,x)/diff(denom,x),x,inf)