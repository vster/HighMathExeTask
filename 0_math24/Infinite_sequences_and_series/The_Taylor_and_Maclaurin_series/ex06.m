% Find the Maclaurin series for the function
% (1+x)^(1/2)

clear
syms x n;
f(x)=(1+x)^(1/2)

x0=0;
f0=subs(f,x,x0);
term(1)=f0;
ts=term(1);
disp([0 f f0 term(1) ts])
for n=1:4
    df(n)=diff(f,x,n);
    df0(n)=subs(df(n),x,x0);
    term(n+1)=df0(n)/factorial(n)*(x-x0)^n;
    ts=ts+term(n+1);
    disp([n df(n) df0(n) term(n+1) ts]);
end
df
%
df0
% [ 1/2, -1/4, 3/8, -15/16]
term
% [ 1, x/2, -x^2/8, x^3/16, -(5*x^4)/128]
ts  
% - (5*x^4)/128 + x^3/16 - x^2/8 + x/2 + 1

ts1(x)=taylor(f(x),'Order',5)
% - (5*x^4)/128 + x^3/16 - x^2/8 + x/2 + 1

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:4
    dterm=diff(term,x1);
    term=dterm*(x-x0)/n;
    term0=subs(term,x1,x0);
    ts=ts+term0;
    disp([n dterm term term0 ts])
end
ts2=ts
% - (5*x^4)/128 + x^3/16 - x^2/8 + x/2 + 1

