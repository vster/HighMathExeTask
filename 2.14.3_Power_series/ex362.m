% Investigate the convergence of the series
% sum (n=1:inf) 2^n*x^(5*n)/(2*n-1)

% x5=t
syms n t;
u(t,n)=2^n*t^n/(2*n-1)
a(n)=2^n/(2*n-1)

R=limit(a(n)/a(n+1),n,inf)
% 1/2 => |t|<1/2

u1(n)=subs(u,t,1/2)
u1(n)=simplify(u1(n))
% 1/(2*n - 1) => series diverges

u2(n)=subs(u,t,-1/2)
u2(n)=simplify(u2(n))
% (-1)^n/(2*n - 1) => series converges conditionally
% -1/2<=t<1/2 => -1/2<=x^5<1/2 => 
%   -1/2^(1/5)<=x<1/2^(1/5)

