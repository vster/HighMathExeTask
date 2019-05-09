clear
syms x y
f(x,y)=(x^2/9+y^2/4)^(3/2)
% -3<=x<=3
% -2<=y<=2

syms ro phi
x1=3*ro*cos(phi)
y1=2*ro*sin(phi)

f=simplify(subs(f,[x y],[x1 y1]))
% ro^2
% 0<=phi<=2*pi
% 0<=ro<=1
f(ro)=ro^3

a=2
b=3
S=pi*a*b
I=S/3*(f(1)+2*f(1/2)+2*f(1)+4*f(1/2))
% ?

I2=vpa(a*b*int(int(ro*f,ro,0,1),phi,0,2*pi))
% (12*pi)/5 =7.53982


