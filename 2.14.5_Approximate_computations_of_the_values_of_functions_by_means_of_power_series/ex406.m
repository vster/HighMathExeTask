% Calculate cos(18grad) accurate to 0.0001

syms x n;
% cos(x) = sum (n=0:inf) u(x,n)
f(x)=cos(x)
x0=0
x1=pi/10
u(x,n)=(-1)^(n-1)*x^(2*(n-1))/factorial(2*(n-1))
digits(8)
err=0.0001

R(x,n)=abs(u(x,n+1))
R1(n)=subs(R,x,x1)
% abs((-1)^n*(pi/10)^(2*n))/factorial(2*n)

syms i;
s=0;
for i=1:7
    term=subs(u(x,n),[x n],[x1 i]);
    s=s+term;
    disp([i term vpa(term) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 0.95105785

term2=taylorterm(f,x0,8)
% [ 1, -x^2/2, x^4/24, -x^6/720]
term3=subs(term2,x,x1)
% [ 1, -pi^2/200, pi^4/240000, -pi^6/720000000]
syms i;
s=0;
for i=1:7
    % term=subs(u(x,n),[x n],[x0 i]);
    R2(i)=abs(term3(i+1));
    s=s+term3(i);
    disp([i term3(i) vpa(term3(i)) s vpa(s) R2(i) vpa(R2(i))])
    if (R2(i)<err)
        break
    end
end
s1=vpa(s)
