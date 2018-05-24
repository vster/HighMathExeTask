% Calculate the area of a figure bounded by one arch of a cycloid
% S = int (t1-t2) y(t)*diff(x(t)) dt 
syms t;
x=2*(t-sin(t))
y=2*(1-cos(t))

ezplot(x,y)
grid on

dx=diff(x)
% 2 - 2*cos(t)

S=int(y*dx,t,0,2*pi)
% 12*pi