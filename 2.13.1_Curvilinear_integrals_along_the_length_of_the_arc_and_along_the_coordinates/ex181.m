% Вычислить 
% I = int (K) (x-y) ds
% где K - отрезок прямой от A(0;0) до B(4;3)

syms x;
% Уравнение прямой AB
y=3/4*x
dy=diff(y)
% 3/4

% I=int (AB) f(x,y) ds = int (a-b) f(x,phi(x))*sqrt(1+diff(phi))^2) dx
I=int((x-3/4*x)*sqrt(1+(3/4)^2),x,0,4)
% 5/2
