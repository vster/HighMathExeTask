% inf-inf
syms x 
y=simplify((log(x)-(x-1))/((x-1)*log(x)))
num=log(x)-(x-1)
denom=(x-1)*log(x)
ezplot(num/denom)
grid
limit(num/denom,x,1)
limit(diff(num,x)/diff(denom,x),x,1)