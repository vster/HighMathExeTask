% Find a product of absolutely convergent series
% 1+2/1!+2^2/2!+...2^n/n!+...
% and
% 1+3/1!+3^2/2!+...3^n/n!+...

syms n;
digits(5)
u1(n)=2^n/factorial(n)
u2(n)=3^n/factorial(n)

P1=symsum(u1(n),n,1,inf)*symsum(u2(n),n,1,inf)
% (exp(2) - 1)*(exp(3) - 1)
vpa(P1)
% 121.94

u3(n)=5^n/factorial(n)
P2=symsum(u3(n),n,1,inf)
% exp(5) - 1
vpa(P2)
% 147.41
% Attention! Does not agree with the answer!