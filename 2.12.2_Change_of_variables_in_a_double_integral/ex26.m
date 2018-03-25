syms a;
% I=int(int(sqrt(x^2+y^2),D)
% D - четверть круга x^2+y^2<=a^2

syms ro teta;
x=ro*cos(teta)
y=ro*sin(teta)
f=sqrt(x^2+y^2)
f=simplify(f)
f=ro

ID=int(int(ro^2,ro,0,a),teta,0,pi/2)
% (pi*a^3)/6