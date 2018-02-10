% 0/0
syms x
num=exp(3*x)-3*x-1
denom=sin(5*x)^2
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)