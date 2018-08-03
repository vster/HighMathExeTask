% Calculate log(3) accurate to 0.0001

% log(3) = log(2+1)

clear
syms t n;
% log(t+1) = log(t) + sum (n=0:inf) u(t,n)
t0=2
u(t,n)=1/((2*n-1)*(2*t+1)^(2*n-1))
digits(8)
err=0.0001

syms i;
s=log(t0);
for i=1:7
    term=2*subs(u(t,n),[t n],[t0 i]);
    R1(i)=2*subs(u(t,n),[t n],[t0 i+1]);
    s=s+term;
    disp([i term vpa(term) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 1.0986085

