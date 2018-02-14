% inf-inf
syms x 
y=simplify((tan(x)^2-x^2)/(x^2*tan(x)^2))
num=tan(x)^2-x^2
denom=x^2*tan(x)^2
ezplot(num/denom)
grid
limit(num/denom,x,0)
limit(diff(num,x)/diff(denom,x),x,0)