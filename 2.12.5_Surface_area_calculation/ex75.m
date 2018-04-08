% Найти площади части поверхности
% x^2+z^2=4
% расположенного внутри цилиндра
% x^2+y^2=4

syms x y;

z=sqrt(4-x^2)

fs=sqrt(1+diff(z,x)^2+diff(z,y)^2)
fs=simplify(fs)

syms ro teta;
fs=subs(fs,[x y],[ro*cos(teta) ro*sin(teta)])
fs=simplify(fs)
% 2*(-1/(ro^2*cos(teta)^2 - 4))^(1/2)

S=2*int(int(fs*ro,ro,0,2),teta,0,2*pi)
% 32