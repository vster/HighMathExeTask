% inf/inf
syms x 
num=tan(pi*x/2)
denom=log(1-x)
ezplot(num/denom)
grid
limit(num/denom,x,1,'left')
limit(diff(num,x)/diff(denom,x),x,1,'left')