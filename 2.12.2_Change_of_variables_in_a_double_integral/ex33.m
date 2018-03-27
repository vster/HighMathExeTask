% f=sin(sqrt(x^2+y^2))/sqrt(x^2+y^2)
% D: от x^2+y^2=pi^2/9 до x^2+y^2=pi^2

syms ro teta;
x=ro*cos(teta)
y=ro*sin(teta)
f=sin(sqrt(x^2+y^2))/sqrt(x^2+y^2)
f=simplify(f)
f=sin(ro)/ro

I1=int(f*ro,ro,pi/3,pi)
% cos(pi/9) + 1
I2=int(I1,teta,0,2*pi)
% 3*pi
