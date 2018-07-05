% Show that the series
% u(x,n)=(-1)^n*n/(x^4+n^2)
% converges uniformly in the interval (-inf;+inf)

syms x n;
u(x,n)=(-1)^n*n/(x^4+n^2)

x1=-2:0.2:2;
for i=1:5
    y1=u(x1,i);
    plot(x1,y1)
    hold on
    grid on
end
hold off

% Use the Leibniz test
% 1 condition
syms i;
for i=1:6
     u1(i)=u(x,i);
     a(i)=abs(u(x,i));
end
u1
% [ -1/(x^4 + 1), 2/(x^4 + 4), -3/(x^4 + 9), 4/(x^4 + 16), -5/(x^4 + 25), 6/(x^4 + 36)]
a
% [ 1/(x^4 + 1), 2/(x^4 + 4), 3/(x^4 + 9), 4/(x^4 + 16), 5/(x^4 + 25), 6/(x^4 + 36)]

% |R(x,n)| < |u(x,n+1)|
% then
% |R(x,n)| < (n+1)/(x^4+(n+1)^2) < 1/(n+1)