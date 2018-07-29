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
    s=s+term;
    disp([i term vpa(term) s vpa(s) R1(i) vpa(R1(i))])
    if (R1(i)<err)
        break
    end
end
s1=vpa(s)
% 1.6487196

clear
syms x n;
f=exp(x);
digits(8);
err=0.00001;

x0=0;
x1=1/2;
for n=1:10
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
% [ 1, x, x^2/2, x^3/6, x^4/24, x^5/120]
term1=subs(term,x,x1)
% [ 1, 1/2, 1/8, 1/48, 1/384, 1/3840, 1/46080, 1/645120, 1/10321920, 1/185794560]

s2=0;
for n=1:10
    s2=s2+term1(n);
    if abs(term1(n+1))<err
        break
    end
end
vpa(s2)
% 1.6487196