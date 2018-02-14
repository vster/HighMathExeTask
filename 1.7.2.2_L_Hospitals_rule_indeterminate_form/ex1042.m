syms x
y=(cos(2*x))^(3/x^2)
z=log(y)

num=log(cos(2*x))
denom=x^2/3
lim1=limit(num/denom,x,0)
lim2=limit(diff(num,x)/diff(denom,x),x,0)
exp(lim1)
exp(lim2)