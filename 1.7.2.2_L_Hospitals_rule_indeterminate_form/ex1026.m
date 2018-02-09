syms x
num=pi-2*atan(x)
denom=exp(3/x)-1
limit(num/denom,x,inf)
limit(diff(num,x)/diff(denom,x),x,inf)