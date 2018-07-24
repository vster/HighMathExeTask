% Expand in series in powers of x the following function.

clear
syms x n a;
assume(a>0)
f(x)= sqrt(x+a)

x0=0;
f0=subs(f,x,x0)
%
ts=f0;
for n=1:5
    df(n)=diff(f(x),x,n);
    df0(n)=subs(df(n),x,x0);
    ts=ts+df0(n)/factorial(n)*(x-x0)^n;
    % ezplot(ts,[-1 1])
    % hold on
    % grid on
end
% hold off
df
% [ 1/(2*(a + x)^(1/2)), -1/(4*(a + x)^(3/2)), 3/(8*(a + x)^(5/2)), -15/(16*(a + x)^(7/2)), 105/(32*(a + x)^(9/2))]
df0
% [ 1/(2*a^(1/2)), -1/(4*a^(3/2)), 3/(8*a^(5/2)), -15/(16*a^(7/2)), 105/(32*a^(9/2))]
ts
% x/(2*a^(1/2)) + a^(1/2) - x^2/(8*a^(3/2)) + x^3/(16*a^(5/2)) - (5*x^4)/(128*a^(7/2)) + (7*x^5)/(256*a^(9/2))

ts1=taylor(f(x),'Order',6)
% x/(2*a^(1/2)) + a^(1/2) - x^2/(8*a^(3/2)) + x^3/(16*a^(5/2)) - (5*x^4)/(128*a^(7/2)) + (7*x^5)/(256*a^(9/2))

% New algorithm
syms x1;
f(x1)=subs(f,x,x1)
f0=subs(f(x1),x1,x0)
ts=f0
term=f
for n=1:5
    dterm=diff(term,x1)
    term=dterm*(x-x0)/n
    term0=subs(term,x1,x0)
    ts=ts+term0
end
ts2=ts
% x/(2*a^(1/2)) + a^(1/2) - x^2/(8*a^(3/2)) + x^3/(16*a^(5/2)) - (5*x^4)/(128*a^(7/2)) + (7*x^5)/(256*a^(9/2))
