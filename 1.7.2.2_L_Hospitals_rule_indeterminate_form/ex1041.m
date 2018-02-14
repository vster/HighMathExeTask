syms x
y=(pi-2*x)^cos(x)
z=log(y)

num=log(pi-2*x)
denom=1/cos(x)
lim1=limit(num/denom,x,pi/2)
lim2=limit(diff(num,x)/diff(denom,x),x,pi/2)
exp(lim1)
exp(lim2)