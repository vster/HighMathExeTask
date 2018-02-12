% 0*inf
syms x 
y=(1-cos(x))/tan(x)
num=1-cos(x)
denom=tan(x)
ezplot(num/denom)
grid
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)