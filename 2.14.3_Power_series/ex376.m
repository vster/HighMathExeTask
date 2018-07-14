% Investigate the convergence of a power series
% sum (n=1:inf) (n/(n+1))*((x-1)/2)^n

syms x n;
u(x,n)=(n/(n+1))*((x-1)/2)^n

% (x-1)/2=t
syms t;
u(t,n)=(n/(n+1))*t^n

a(n)=n/(n+1)
R=limit(a(n)/a(n+1),n,inf)
% 1 => -1<t<1

% t=1
u1(n)=subs(u(t,n),t,1)
% n/(n + 1)
L=limit(u1(n),n,inf)
% 1 => at t=1 series diverges

% t=-1
u2(n)=subs(u(t,n),t,-1)
% ((-1)^n*n)/(n + 1)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:5
     u3(i)=vpa(abs(u2(i)));
end
u3
% [ 0.5, 0.667, 0.75, 0.8, 0.833]

% 2 condition
L=limit(abs(u2(n)),n,inf)
% 1 => series diverges

% -1<(x-1)/2<1 => 1<x<3
