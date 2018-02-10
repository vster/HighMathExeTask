% inf/inf
syms x 
num=log(x-1)
denom=1/tan(pi*x)
ezplot(num/denom)
grid
limit(num/denom,x,1)
limit(diff(num,x)/diff(denom,x),x,1)