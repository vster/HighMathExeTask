syms t a;
x=a*cos(t)^3
y=a*sin(t)^3

ezplot(x/a,y/a)
grid on

dx=diff(x,t)

f=y*dx
S=int(f,0,pi/2)

%f2=x*y*dx
xa=1/S*int(x*y*dx,0,pi/2)
ya=1/(2*S)*int(y^2*dx,0,pi/2)
% (256*a)/(315*pi)  (256*a)/(315*pi)