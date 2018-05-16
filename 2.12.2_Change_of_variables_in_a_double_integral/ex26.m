syms a;
% I=int(int(sqrt(x^2+y^2),D)
% D - quadrant x^2+y^2<=a^2

syms x y;
f=sqrt(x^2+y^2)

syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
f=subs(f,[x y],[x1 y1])
f=simplify(f)
f=ro

ID=int(int(f*ro,ro,0,a),teta,0,pi/2)
% (pi*a^3)/6