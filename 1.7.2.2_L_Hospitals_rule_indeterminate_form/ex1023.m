syms x
y=(1+x)^log(x)
z=log(y)

num=log(x+1)
denom=1/log(x)
lim1=limit(num/denom,x,0)
lim2=limit(diff(num,x)/diff(denom,x),x,0)
exp(lim1)
exp(lim2)