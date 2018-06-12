syms t a;
x=a*cos(t)^3
y=a*sin(t)^3

ezplot(x/a,y/a)

% dx=diff(x)
f=y*diff(x)
% -3*a^2*cos(t)^2*sin(t)^4

S=int(y*diff(x),t,0,-2*pi)
% (3*pi*a^2)/8