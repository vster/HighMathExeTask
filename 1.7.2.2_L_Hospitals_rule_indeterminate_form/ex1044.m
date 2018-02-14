syms x
y=(tan(x)/x)^(1/x^2)
z=log(y)

num=log(tan(x)/x)
denom=x^2
lim1=limit(num/denom,x,0)
lim2=limit(diff(num,x)/diff(denom,x),x,0)
exp(lim1)
exp(lim2)