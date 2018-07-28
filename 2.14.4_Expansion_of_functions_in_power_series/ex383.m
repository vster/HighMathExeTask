% Expand in a power series x function 
% f(x)=sin(x)^2

clear
syms x n;
f(x)=sin(x)^2

x0=0;
f0=subs(f,x,x0)
% 0
ts=f0;
dfp=f;
for n=1:7
    df(n)=diff(dfp,x);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*(x-x0)^n;
    disp([df(n) df0(n) ts])
    % ezplot(ts,[-1 1])
    % grid on
    dfp=df(n);
end
df
df=simplify(df)
% [ sin(2*x), 2 - 4*sin(x)^2, -4*sin(2*x), 16*sin(x)^2 - 8, 16*sin(2*x), 32 - 64*sin(x)^2, -64*sin(2*x)]
% df(x,n)=2^(n-1)*sin(2*x+pi/2*(n-1))
% df(x,n+1)=2^n*sin(2*x+pi/2*n)
df0
% [ 0, 2, 0, -8, 0, 32, 0]
ts
% (2*x^6)/45 - x^4/3 + x^2
syms x n c;
% Remainder
% R(n)=2^n*sin(2*c+pi*n/2)/factorial(n+1)*x^(n+1)
R(n)=1/2*(2*x)^(n+1)/factorial(n+1)*sin(2*c+pi*n/2)
R1(n)=2^n/factorial(n)
L=limit(R1,n,inf)
% 0 => limit(R(n),n,inf)=0

ts1=taylor(f(x),'Order',8)
% (2*x^6)/45 - x^4/3 + x^2

% sin(x)^2=1/2*(1-cos(2*x))
ts2=taylor(cos(2*x),'Order',8)
% - (4*x^6)/45 + (2*x^4)/3 - 2*x^2 + 1
ts3=1/2*(1-ts2)
% (2*x^6)/45 - x^4/3 + x^2

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:7
    dterm=diff(term,x1);
    dterm=simplify(dterm);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
    disp([dterm term term0 ts])
end
ts4=ts
% (2*x^6)/45 - x^4/3 + x^2