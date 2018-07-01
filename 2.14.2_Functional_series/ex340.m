% Show that the series
% u(x,n)=(-1)^(n-1)/(x^(2*n)+n)
% converges uniformly for all values of x (-inf<x<+inf)

clear
syms x n;
u(x,n)=(-1)^(n-1)/(x^(2*n)+n)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:6
     u1(i)=u(x,i);
     a(i)=abs(u(x,i));
end
u1
% [ 1/(x^2 + 1), -1/(x^4 + 2), 1/(x^6 + 3), -1/(x^8 + 4), 1/(x^10 + 5), -1/(x^12 + 6)]
a
% [ 1/(x^2 + 1), 1/(x^4 + 2), 1/(x^6 + 3), 1/(x^8 + 4), 1/(x^10 + 5), 1/(x^12 + 6)]

% |R(x,n)| < |u(x,n+1)|
% then
% |R(x,n)| < 1/(x^(2*n+2)+n+1) < 1/(n+1)

% 1/(n+1)<=epsilon <=> n>=1/epsilon-1
% if n>=N, where N>=1/epsilon-1
% then
% |R(x,n)| < epsilon
% So series is converges

for i=1:3
    ezplot(u(x,i))
    hold on
    grid on
end
hold off