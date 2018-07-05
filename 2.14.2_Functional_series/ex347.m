% Find the domain of convergence of series
% u(x,n)=exp(-(n-1)*x)

syms x n;
u(x,n)=exp(-(n-1)*x)

x1=-1:0.2:2;
for i=1:3
    y1=u(x1,i);
    plot(x1,y1)
    hold on
    grid on
end
hold off

assume(x<0)
L1=limit(u(x,n),n,inf)
% Inf => series diverge

assume(x==0)
L2=limit(u(x,n),n,inf)
% 1 => series diverge

assume(x>0)
L3=limit(u(x,n),n,inf)
% 0 => series converge


