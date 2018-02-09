syms x
y=sin(x)^x
ly=log(y)
num=log(sin(x))
denom=1/x
lim1=limit(num/denom,x,0)
lim2=limit(diff(num,x)/diff(denom,x),x,0)
exp(lim1)
exp(lim2)