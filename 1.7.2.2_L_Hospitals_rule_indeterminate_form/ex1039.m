% inf-inf
syms x p q;
y=simplify(((1-x^q)*p-(1-x^p)*q)/((1-x^p)*(1-x^q)))
num=(1-x^q)*p-(1-x^p)*q
denom=(1-x^p)*(1-x^q)
e1=simplify(limit(num/denom,x,1))
e2=simplify(limit(diff(num,x)/diff(denom,x),x,1))