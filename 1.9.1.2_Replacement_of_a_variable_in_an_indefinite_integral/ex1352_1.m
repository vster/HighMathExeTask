% syms x;
% f=sin(x^(1/3))/x^(2/3)
% I=int(f) - ?
% t=x^(1/3)

syms t;
x=t^3
dx=diff(x)
% 3*t^2

f=sin(x^(1/3))/x^(2/3)
% f=sin((t^3)^(1/3))/(t^3)^(2/3)
f=sin(t)/t^2
I=int(f*dx)
% -3*cos(t)

t=x^(1/3)
I=-3*cos(t)
% -3*cos((t^3)^(1/3))