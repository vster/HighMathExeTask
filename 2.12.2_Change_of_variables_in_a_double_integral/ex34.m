% f=sqrt(x^2+y^2)
% D: x^2+y^2=a^2  x^2+y^2=4*a^2

syms ro teta a;
x=ro*cos(teta)
y=ro*sin(teta)
f=sqrt(x^2+y^2)
f=simplify(f)
f=ro

I1=int(ro^2,ro,a,2*a)
% (7*a^3)/3
ID=int(I1,teta,0,2*pi)
% (14*pi*a^3)/3