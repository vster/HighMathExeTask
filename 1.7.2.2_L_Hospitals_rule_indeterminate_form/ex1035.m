% 0*inf
syms x 
y=x/tan(pi*x)
num=x
denom=tan(pi*x)
ezplot(num/denom)
grid
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)