syms x
num=x^2-1+log(x)
denom=exp(x)-exp(1)
limit(num/denom,x,1)
limit(diff(num,x)/diff(denom,x),x,1)