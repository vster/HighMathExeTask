% Find the area of the domain R bounded by the astroid
% x=a*cos(t)^3,y=a*sin(t)^3,0<=t<=2*pi

syms t dt a;
x=a*cos(t)^3
y=a*sin(t)^3
f=x*diff(y)-y*diff(x)
f=simplify(f)
% -(3*a^2*(cos(4*t) - 1))/8
S=1/2*int(f,t,0,2*pi)
% (3*pi*a^2)/8