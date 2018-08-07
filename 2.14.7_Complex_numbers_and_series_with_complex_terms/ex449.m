% Present in trigonometric form the number 
% z=1+cos(20grad)+1i*sin(20grad)

clear
phi=20*pi/180
phi=pi/9
digits(6)
z=1+cos(phi)+1i*sin(phi)
% 1.9397 + 0.3420i

syms t;
% phi=2*t
z=1+cos(2*t)+1i*sin(2*t)
x=1+cos(2*t)
y=sin(2*t)

r=sqrt(x^2+y^2)
r=simplify(r)
r=expand(r)
% 2*(cos(t)^2)^(1/2)
r=2*cos(t)

arg=atan(y/x)
arg=expand(arg)
% atan(sin(t)/cos(t))
arg=t

z2=2*cos(t)*(cos(t)+1i*sin(t))
z2=subs(z2,t,pi/18)
% 2*cos(pi/18)*(cos(pi/18) + sin(pi/18)*1i)
vpa(z2)
% 1.93969 + 0.34202i