% Find the domain of convergence of the series
% u(x,n)=1/(1+x^(2*n))

syms x n;
u(x,n)=1/(1+x^(2*n))

assume(-1<x<1)
L1=limit(u(x,n),n,inf)
% L1=1 > 0 => series is diverge

assume(x==1)
L2=limit(u(x,n),n,inf)
% L2=1/2 > 0 => series is diverge

assume(x==-1)
L3=limit(u(x,n),n,inf)
% L3=NaN => series is diverge

assume(x>1)
L4=limit(u(x,n),n,inf)
% L4=0 => series is converge

assume(x<-1)
L5=limit(u(x,n),n,inf)
% L5=0 => series is converge

% if |x|>1 => series is converge

for i=1:3
    ezplot(u(x,i))
    hold on
    grid on
end
hold off
