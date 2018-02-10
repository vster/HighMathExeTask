% inf/inf
syms x 
num=log(x)
denom=1+2*log(sin(x))
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)