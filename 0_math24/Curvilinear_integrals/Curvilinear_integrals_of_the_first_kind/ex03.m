% Compute the integral
% I = int (C) x^2 ds
% where C is the curve given by the equation y=f(x)=log(x), 1<=x<=e

% int (C) F(x,y) *ds = int (a:b) F(x,f(x))*sqrt(1+diff(x)^2) *dx

syms x dx;
f1=x^2
f2=log(x)
ds=sqrt(1+diff(f2)^2)
% (1/x^2 + 1)^(1/2)

I = int(f1*ds,x,1,e)
% (e^2 + 1)^(3/2)/3 - (2*2^(1/2))/3

I=subs(I,e,exp(sym(1)))
% (exp(2) + 1)^(3/2)/3 - (2*2^(1/2))/3
vpa(I)
% ~7.16
