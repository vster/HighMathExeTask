% f=sqrt(x^2+y^2)
% D: x^2+y^2=a^2  x^2+y^2=4*a^2

syms x y;
f=sqrt(x^2+y^2)

syms ro teta a;
x1=ro*cos(teta)
y1=ro*sin(teta)
f=subs(f,[x y],[x1 y1])
f=simplify(f)
f=ro

ID=int(int(f*ro,ro,a,2*a),teta,0,2*pi)
% (14*pi*a^3)/3