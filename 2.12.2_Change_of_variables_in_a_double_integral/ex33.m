% f=sin(sqrt(x^2+y^2))/sqrt(x^2+y^2)
% D: от x^2+y^2=pi^2/9 до x^2+y^2=pi^2

syms x y;
f=sin(sqrt(x^2+y^2))/sqrt(x^2+y^2)

syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
f=subs(f,[x y],[x1 y1])
f=simplify(f)
f=sin(ro)/ro

ID=int(int(f*ro,ro,pi/3,pi),teta,0,2*pi)
% 3*pi
