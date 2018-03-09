syms t a b;
x=a*cos(t)
y=b*sin(t)

S=pi*a*b/4

dx=diff(x,t)
fx=x*y*dx
xa=(1/S)*int(fx,t,pi/2,0)
% (4*a)/(3*pi)

fy=y^2*dx
ya=(1/(2*S))*int(fy,t,pi/2,0)
% (4*b)/(3*pi)
