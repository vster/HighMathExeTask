% Find the length of the spatial curve given parametrically in the form 
% r(t) = (3*t, 3*t^2, 2*t^3), where 0<=t<=1

syms t real;
x=3*t
y=3*t^2
z=2*t^3

% L=int(C)ds=int(alfa:beta)sqrt(diff(x,t)^2+diff(y,t)^2+diff(z,t)^2)*dt

f=sqrt(diff(x,t)^2+diff(y,t)^2+diff(z,t)^2)
f=simplify(f)
% 6*t^2 + 3
L=int(f,t,0,1)
% 5