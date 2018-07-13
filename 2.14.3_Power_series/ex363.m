% Investigate the convergence of the series
% sum (k=1:inf) ((k+1)/(2*k+1))^k*(x-2)^(2*k)

syms k real;
u(x,k)=((k+1)/(2*k+1))^k*(x-2)^(2*k)
a(k)=((k+1)/(2*k+1))^k

R=1/limit(a(k)^(1/(2*k)),k,inf)
% R=2^(1/2)

u1(k)=subs(u(x,k),x-2,2^(1/2))
u1(k)=simplify(u1(k))
% 2^k*((k + 1)/(2*k + 1))^k

L1=limit(u1(k),k,inf)
% exp(1/2) >0 => if x-2=2^(1/2) series diverges

u2(k)=subs(u(x,k),x-2,-2^(1/2))
u2(k)=simplify(u2(k))
% (-1)^(k)*((k + 1)/(2*k + 1))^k
L2=limit(abs(u2(k)),k,inf)
% exp(1/2) >0 => if x-2=-2^(1/2) series diverges

% 2-2^(1/2)<x<2+2^(1/2)