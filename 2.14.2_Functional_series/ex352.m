% Show that series
% u(x,n)=x^n/2^(n-1)
% in the interval (-2;2) converges unevenly

clear
syms x n;
u(x,n)=x^n/2^(n-1)

D(x,n)=simplify(u(x,n+1)/u(x,n))
% x/2

% if x<2 => D<1 => series converges
% if x=2 => D=1 => series diverges

x=-2
u1(n)=u(x,n)
% 2^(1 - n)*(-2)^n
S=symsum(u(x,n),n,1,inf)
% NaN

x=-1
u1(n)=u(x,n)
% (-1)^n*2^(1 - n)
S=symsum(u(x,n),n,1,inf)
% -2/3

x=1
u1(n)=u(x,n)
% 2^(1 - n)
S=symsum(u(x,n),n,1,inf)
% 2

x=2
u1(n)=u(x,n)
% 2^(1 - n)*2^n
S=symsum(u(x,n),n,1,inf)
% Inf

syms i;
x1=-2:0.2:2;
s=zeros(1,length(x1))
for i=1:4
    s=s+u(x1,i);
    plot(x1,s)
    grid on
end
hold off