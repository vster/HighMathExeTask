% Find the length of the curve a*y^2 = x^3 under the condition 
% 0<=x<=5*a, y>=0.

syms x a;
y=sqrt(x^3/a)

% L=int(a:b)sqrt(1+diff(y,x)^2)*dx

f=sqrt(1+diff(y,x)^2)
% ((9*x)/(4*a) + 1)^(1/2)
L=int(f,x,0,5*a)
% (335*a)/27