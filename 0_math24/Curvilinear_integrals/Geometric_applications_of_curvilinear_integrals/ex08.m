% Find the area of the region bounded by an ellipse given parametrically in the form
% x=a*cos(t), y=b*sin(t), 0<=t<=2*pi

syms t a b;
x=a*cos(t)
y=b*sin(t)

% S=int_c(C)x*dy=int(alfa:beta)x(t)*diff(y,t)*dt

f=x*diff(y,t)
% a*b*cos(t)^2
S=int(f,t,0,2*pi)
% pi*a*b

S1=-int(y*diff(x,t),t,0,2*pi)
% pi*a*b

S2=1/2*int(x*diff(y,t)-y*diff(x,t),t,0,2*pi)
% pi*a*b