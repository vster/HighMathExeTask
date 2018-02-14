syms x
y=(x+2^x)^(1/x)
z=log(y)

num=log(x+2^x)
denom=x
lim1=limit(num/denom,x,inf)
lim2=limit(diff(num,x)/diff(denom,x),x,inf)
exp(lim1)
exp(lim2)