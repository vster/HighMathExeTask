% Calculate 1/exp(-1/5) accurate to 0.00001

syms x n;
% exp(x) = sum (n=0:inf) u(x,n)
f(x)=exp(x)
x0=-1/5
u(x,n)=x^n/factorial(n)
digits(8)
err=0.00001

R(x,n)=abs(x^(n+1)/factorial(n+1))
R1(n)=subs(R,x,x0)
% (-1/5)^(n + 1)/factorial(n + 1)

syms i;
s=0;
for i=0:7
    term0=subs(u(x,n),[x n],[x0 i]);
    s=s+term0;
    disp([i term0 vpa(term0) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 0.81873333



