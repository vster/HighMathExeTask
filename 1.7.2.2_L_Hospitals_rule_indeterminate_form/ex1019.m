syms x
num=log(x)
denom=1/x^2
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)