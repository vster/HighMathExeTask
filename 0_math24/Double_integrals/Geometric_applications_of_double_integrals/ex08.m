% Вычислить объем единичного шара
% x^2+y^2+z^2=1

syms x y;
z=sqrt(1-(x^2+y^2))

syms ro teta;
z=subs(z,[x y],[ro*cos(teta) ro*sin(teta)])
z=simplify(z)

V=2*int(int(z*ro,ro,0,1),teta,0,2*pi)
% (4*pi)/3