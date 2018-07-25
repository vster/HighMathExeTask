% Expand the exponential function 
% exp(x) 
% in a power series.

syms x n;

% Let use
u(x,n)=x^n/factorial(n)

% Will test
f(x)=symsum(u(x,n),n,0,inf)
% exp(x)

du(x)=diff(u(x,n),x)
% (n*x^(n - 1))/factorial(n) = x^(n-1)/factorial(n-1)

syms i;
s=0
for i=0:5
    s=s+u(x,i)
end
s
% x^5/120 + x^4/24 + x^3/6 + x^2/2 + x + 1 = f(x)

ds=diff(s,x)
% x^4/24 + x^3/6 + x^2/2 + x + 1 = diff(f(x))

% diff(f(x))=f(x) => f(x)=c*exp(x)

syms c;
f1(x)=c*exp(x)
f0=subs(f1,x,0)
% c=1
f1(x)=exp(x)