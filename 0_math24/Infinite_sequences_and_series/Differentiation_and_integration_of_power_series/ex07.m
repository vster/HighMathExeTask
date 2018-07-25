% Expand the hyperbolic sine 
% sinh(x) in the power series.

% sinh(x)=(exp(x)-exp(-x))/2

syms x n;
% exp(x)
u1(x,n)=x^n/factorial(n)
ft1=symsum(u1(x,n),n,0,inf)
% exp(x)

% exp(-x)
u2(x,n)=(-1)^n*x^n/factorial(n)
ft2=symsum(u2(x,n),n,0,inf)
% exp(-x)

% sinh(x)
syms i;
s1=0
s2=0
for i=0:6
    s1=s1+u1(x,i);
    s2=s2+u2(x,i);
end
s1
% x^6/720 + x^5/120 + x^4/24 + x^3/6 + x^2/2 + x + 1
s2
% x^6/720 - x^5/120 + x^4/24 - x^3/6 + x^2/2 - x + 1

s3=1/2*(s1-s2)
% x^5/120 + x^3/6 + x

u4(x,n)=x^(2*n+1)/factorial(2*n+1)

s4=0
for i=0:2
    s4=s4+u4(x,i);    
end
s4
% x^5/120 + x^3/6 + x