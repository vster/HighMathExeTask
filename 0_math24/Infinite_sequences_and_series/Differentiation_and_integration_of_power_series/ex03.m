% Find the expansion of the function
% 6*x/(5*x^2-4*x-1)
% in a power series.

syms x real;
f=6*x/(5*x^2-4*x-1)
f1=5*x^2-4*x-1
f1=factor(f1)
% [ 5*x + 1, x - 1]
% 6*x/(5*x^2-4*x-1) = A/(5*x+1) + B/(x-1)
% 6x=A(x-1)+B(5x+1) => 6x=Ax-A+5Bx+B => 6x=(A+5B)x+(-A+B)
% {A+5B=6; -A+B=0} => A=1,B=1
% 6*x/(5*x^2-4*x-1) = 1/(5*x+1) + 1/(x-1)

S1=1/(5*x+1)
S2=1/(x-1)
% Testing
S=collect(S1+S2)

% S1=1/(5*x+1)-geometrical progression
% S=a1/(1-q)
u1(x,n)=(-5*x)^(n-1)
s1(x)=symsum(u1(x,n),n,0,inf)

% S2=1/(x-1)-geometrical progression
u2(x,n)=x^(n-1)
s2(x)=symsum(u2(x,n),n,0,inf)

u(x,n)=u1(x,n)-u2(x,n)
% (-5*x)^(n-1) - x^(n-1)

syms i;
for i=1:6
    a(i)=u(x,i);
end
a
% [ 0, -6*x, 24*x^2, -126*x^3, 624*x^4, -3126*x^5]
