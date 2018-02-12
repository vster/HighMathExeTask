% 0*inf
syms x 
y=asin(x)/tan(x)
num=asin(x)
denom=tan(x)
ezplot(num/denom)
grid
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)