syms t;
x=2*(t-sin(t))
y=2*(1-cos(t))

ezplot(x,y)
grid on

dx=diff(x)

yt=y*dx

S=int(yt,0,2*pi)

% 12*pi