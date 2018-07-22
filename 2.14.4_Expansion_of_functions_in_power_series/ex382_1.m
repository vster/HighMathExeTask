% Expand in a power series x function f(x)=2^x

clear
syms x x1;
f(x1)=2^x1

x0=0;
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:5
    dterm=diff(term,x1)
    term=dterm*(x-x0)/n
    term0=subs(term,x1,x0)
    ts=ts+term0
end
ts
% (log(2)^5*x^5)/120 + (log(2)^4*x^4)/24 + (log(2)^3*x^3)/6 + (log(2)^2*x^2)/2 + log(2)*x + 1

ts1(x)=taylor(f(x))
% (log(2)^5*x^5)/120 + (log(2)^4*x^4)/24 + (log(2)^3*x^3)/6 + (log(2)^2*x^2)/2 + log(2)*x + 1

