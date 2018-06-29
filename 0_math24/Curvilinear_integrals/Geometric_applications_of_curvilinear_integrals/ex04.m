% Find the length of the cycloid given in the parametric form by the vector 
% r(t) = (a*(t-sin(t)), a*(1-cos(t))) in the interval 0<=t<=2*pi

syms t a real;
x=a*(t-sin(t))
y=a*(1-cos(t))

% L=int(C)*ds=int(alfa:beta)sqrt(diff(x,t)^2+diff(y,t)^2)*dt

f=sqrt(diff(x,t)^2+diff(y,t)^2)
f=simplify(f)
% 2^(1/2)*abs(a)*(1 - cos(t))^(1/2)
L=int(f,t,0,2*pi)
% 8*a