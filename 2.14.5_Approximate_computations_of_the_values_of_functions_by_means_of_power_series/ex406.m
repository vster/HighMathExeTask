% Calculate cos(18grad) accurate to 0.0001

syms x n;
% cos(x) = sum (n=0:inf) u(x,n)
f(x)=cos(x)
x0=pi/10
u(x,n)=(-1)^(n-1)*x^(2*(n-1))/factorial(2*(n-1))
digits(8)
err=0.0001

R(x,n)=abs(u(x,n+1))
R1(n)=subs(R,x,x0)
% abs((-1)^n*(pi/10)^(2*n))/factorial(2*n)

syms i;
s=0;
for i=1:7
    term=subs(u(x,n),[x n],[x0 i]);
    s=s+term;
    disp([i term vpa(term) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 0.95105785
