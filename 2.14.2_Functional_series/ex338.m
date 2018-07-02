% Given a functional range
% u(x,n)=1/(2*n-1)*((4-x)/(7*x+2))^n
% Investigate for convergence at points x=0 and x=1.

syms x n;
u(x,n)=1/(2*n-1)*((4-x)/(7*x+2))^n

x=0
u0(n)=u(x,n)
D=limit(u0(n+1)/u0(n),n,inf)
% 2 > 1 => series is diverges

x=1
u1(n)=u(x,n)
D=limit(u1(n+1)/u1(n),n,inf)
% 1/3 < 1 => series is converge

x1=-2:0.2:2
for i=1:3
    y1=u(x1,i);
    plot(x1,y1)
    hold on
    grid on
end
hold off