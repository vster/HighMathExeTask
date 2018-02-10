% inf/inf
syms x a
num=log(x-a)
denom=log(exp(x)-exp(a))
limit(num/denom,x,a)
limit(diff(num,x)/diff(denom,x),x,a)