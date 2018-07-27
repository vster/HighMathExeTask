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

syms i;
s=0;
for i=0:7
    term=subs(u(x,n),[x n],[1/2 i]);
    vpa(term);
    s=s+term;
    vpa(s);
    R1(i);
    disp([i term vpa(term) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 1.6487196



