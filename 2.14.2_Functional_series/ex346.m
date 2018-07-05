% To investigate the convergence of the functional series 
% u(x,n)=n!/n^n*(x^2-4*x+6)^n
% at points x=1 and x=2.

syms x n;
u(x,n)=(factorial(n)/n^n)*(x^2-4*x+6)^n

x=1
u1(n)=u(x,n)
% (3^n*factorial(n))/n^n
D=limit(u1(n+1)/u1(n),n,inf)
% 3*exp(-1)
vpa(D)
% 1.1 > 1 => series diverges

x=2
u2(n)=u(x,n)
% (2^n*factorial(n))/n^n
D=limit(u2(n+1)/u2(n),n,inf)
% 2*exp(-1)
vpa(D)
% 0.74 < 1 => the series converges

x1=0:0.2:4;
for i=1:4
    y1=u(x1,i);
    plot(x1,y1)
    hold on
    grid on
end
hold off