% Find the domain of convergence of series
% u(x,n)=1/n^x

syms x n;
u(x,n)=1/n^x

x=1
u1(n)=u(x,n)
% 1/n
S=symsum(u(x,n),n,1,inf)
% Inf => series diverge

x=2
u2(n)=u(x,n)
% 1/n^2
S=symsum(u(x,n),n,1,inf)
% pi^2/6 => series converge

% at x=[1;+inf] series converge