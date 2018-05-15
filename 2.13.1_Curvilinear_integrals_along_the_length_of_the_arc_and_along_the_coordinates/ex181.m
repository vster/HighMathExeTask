% Calculate 
% I = int (K) (x-y) ds
% where K - line segment from A(0;0) to B(4;3)

syms x;
% The equation of the line AB
y=3/4*x
dy=diff(y)
% 3/4

% I=int (AB) f(x,y) ds = int (a-b) f(x,phi(x))*sqrt(1+diff(phi))^2) dx
I=int((x-3/4*x)*sqrt(1+(3/4)^2),x,0,4)
% 5/2
