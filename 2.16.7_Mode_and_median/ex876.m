syms x a
assume(a>0)
f(x)=a*exp(2*x-x^2)

df(x)=diff(f,x)
% -a*exp(- x^2 + 2*x)*(2*x - 2)
d2f(x)=simplify(diff(f,x,2))
% 2*a*exp(-x*(x - 2))*(2*x^2 - 4*x + 1)

xm=solve(df)
% 1
d2fm=subs(d2f,x,xm)
% -2*a*exp(1)<0 => f(xm) has a maximum 
% M=1