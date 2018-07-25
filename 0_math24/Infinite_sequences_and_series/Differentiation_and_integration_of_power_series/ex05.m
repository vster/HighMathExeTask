% Expand the integral in the power series
% int(0:x) log(1+t)/t dt

syms t x n;
f=log(1+t)/t
assume(n>=1)

% s=log(1+t) = sum(n=1:inf) (-1)^(n+1)*t^n/n
u(t,n)=(-1)^(n+1)*t^n/n

% s1=log(1+t)/t
u1(t,n)=u(t,n)/t
% ((-1)^(n + 1)*t^n)/(n*t)
u1(t,n)=((-1)^(n + 1)*t^(n-1))/n

% int(0:x)log(1+t)/t *dt
u2(t,n)=int(u1(t,n),t,0,x)
% -((-1)^n*x^n)/n^2
% ((-1)^(n+1)*x^n)/n^2