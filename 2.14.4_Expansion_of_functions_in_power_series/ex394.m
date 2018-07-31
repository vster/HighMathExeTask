% Expand in series in powers of x the following function.

clear
syms x n a;
assume(a>0)
f(x)= log(x+a)

x0=0;
f0=subs(f,x,x0)
% log(a)
term(1)=f0;
ts=term(1);
disp([0 f f0 term(1) ts])
for n=1:5
    df(n)=diff(f,x,n);
    df0(n)=subs(df(n),x,x0);
    term(n+1)=df0(n)/factorial(n)*(x-x0)^n;
    ts=ts+term(n+1);
    disp([n df(n) df0(n) term(n+1) ts]);
end
df
% [ 1/(a + x), -1/(a + x)^2, 2/(a + x)^3, -6/(a + x)^4, 24/(a + x)^5]
df0
% [ 1/a, -1/a^2, 2/a^3, -6/a^4, 24/a^5]
term
% [ log(a), x/a, -x^2/(2*a^2), x^3/(3*a^3), -x^4/(4*a^4), x^5/(5*a^5)]
ts
% log(a) + x/a - x^2/(2*a^2) + x^3/(3*a^3) - x^4/(4*a^4) + x^5/(5*a^5)

ts1=taylor(f(x),'Order',6)
% log(a) + x/a - x^2/(2*a^2) + x^3/(3*a^3) - x^4/(4*a^4) + x^5/(5*a^5)

n=6
term2=taylorterm(f,x0,n)

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:5
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
    disp([dterm term term0 ts])  
end
ts2=ts
% log(a) + x/a - x^2/(2*a^2) + x^3/(3*a^3) - x^4/(4*a^4) + x^5/(5*a^5)
