% 1. A Taylor series for a function of one variable
% f(x)=f(x0)+sum(n=1:inf)subs(diff(f,x),x,x0)/factorial(n)*(x-x0)^n

% If x0=0 then a Maclaurin series is obtained
% f(x)=f(0)+sum(n=1:inf)subs(diff(f,x),x,0)/factorial(n)*x^n

syms x m;
taylor(exp(x))
% x^5/120 + x^4/24 + x^3/6 + x^2/2 + x + 1
% exp(x) = 1 + sum (n=1:inf) x^(n-1)/factorial(n-1)
% -inf<x<+inf

taylor(sinh(x))
% x^5/120 + x^3/6 + x
% sinh(x) = sum (n=1:inf) x^(2*n-1)/factorial(2*n-1)
% -inf<x<+inf

taylor(cosh(x))
% x^4/24 + x^2/2 + 1
% cosh(x) = sum (n=1:inf) 1 + x^(2*(n-1))/factorial(2*(n-1))
% -inf<x<+inf

taylor(sin(x))
% x^5/120 - x^3/6 + x
% sin(x) = sum (n=1:inf) (-1)^(n-1)*x^(2*n-1)/factorial(2*n-1)
% -inf<x<+inf

taylor(cos(x))
% x^4/24 - x^2/2 + 1
% cos(x) = 1 + sum (n=1:inf) (-1)^(n-1)*x^(2*(n-1))/factorial(2*(n-1))
% -inf<x<+inf

taylor((1+x)^m)
% (m/5 - (m*(m/4 - m^2/6))/3 + (m*(m*(m/12 - m^2/24) - m/6 + 
%    m^2/12))/2 - m*(m/8 - (m*(m/12 - m^2/24))/2 + 
%    m*(m*(m/48 - m^2/120) - m/18 + m^2/48) - m^2/18) - m^2/8)*x^5 + 
%    ((m*(m/4 - m^2/6))/2 - m/4 - m*(m*(m/12 - m^2/24) - m/6 + m^2/12) + 
%    m^2/6)*x^4 + (m/3 - m*(m/4 - m^2/6) - m^2/4)*x^3 + 
%    (m^2/2 - m/2)*x^2 + m*x + 1
% (1+x)^m = 1+sum(n=1:inf) m*(m-1)...(m-n+2)/factorial(n-1)*x^(n-1)
% at m>=0 if -1<=x<=1
% at -1<m<0 if -1<x<=1
% at m<=-1 if -1<x<1

taylor(log(1+x))
% x^5/5 - x^4/4 + x^3/3 - x^2/2 + x
% log(1+x)=sum(n=1:inf) (-1)^(n-1)*x^n/n
% -1<x<=1

taylor(atan(x))
% x^5/5 - x^3/3 + x
% atan(x) = sum (n=1:inf) (-1)^(n-1)*x^(2*n-1)/(2*n-1)
% -1<=x<=1