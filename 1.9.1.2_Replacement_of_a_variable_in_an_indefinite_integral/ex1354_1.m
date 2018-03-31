syms x;
f=x^2*sqrt(x^3+5)

% sqrt(x^3+5)=t
% x^3+5=t^2
% 3*x^2*dx=2*t*dt
% x^2*dx=2/3*t*dt
% df=x^2*sqrt(x^3+5)*dx
% df=sqrt(x^3+5)*x^2*dx
% df=t*2/3*t*dt
syms t;
f=2/3*t^2
I=int(f,t)
% (2*t^3)/9

syms x;
t=sqrt(x^3+5)
I=(2*t^3)/9
%I=(2*(x^3 + 5)^(3/2))/9