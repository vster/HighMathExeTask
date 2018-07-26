% Calculate exp(1/2) accurate to 0.00001

syms x n;
% exp(x) = sum (n=0:inf) u(x,n)
f(x)=exp(x)
u(x,n)=x^n/factorial(n)
digits(8)
err=0.00001

R(x,n)=x^n/factorial(n)*(x/(n+1-x))
R1(n)=subs(R,x,1/2)
% (1/2)^n/(2*factorial(n)*(n + 1/2))

s=0
syms i;
for i=0:7
    i
    term=subs(u(x,n),[x n],[1/2 i])
    vpa(term)
    s=s+term
    vpa(s)
    R1(i)
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)



