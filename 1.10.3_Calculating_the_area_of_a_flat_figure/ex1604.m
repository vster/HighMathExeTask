syms t a;
x=a*cos(t)^3
y=a*sin(t)^3

ezplot(x/a,y/a)

% dx=diff(x)
S=int(y*diff(x),0,2*pi)