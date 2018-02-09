syms x
num=exp(x)-exp(-x)
denom=log(1+x)
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)