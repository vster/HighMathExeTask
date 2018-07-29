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

clear
syms x n;
f=exp(x);
digits(8);
err=0.00001;
x0=0;
x1=-1/5;
for n=1:8
    if n>1
        df(n)=diff(f,x,n-1);
    else
        df(n)=f;
    end
    df0(n)=subs(df(n),x,x0);
    term(n)=df0(n)/factorial(n-1)*(x-x0)^(n-1);
    disp([n,df(n),df0(n),term(n)])
end
term
% [ 1, x, x^2/2, x^3/6, x^4/24, x^5/120, x^6/720, x^7/5040]
term1=subs(term,x,x1)
% [ 1, -1/5, 1/50, -1/750, 1/15000, -1/375000, 1/11250000, -1/393750000]

s2=0
for n=1:8
    s2=s2+term1(n);
    if abs(term1(n+1))<err
        break
    end
end
vpa(s2)
% 0.81873333

