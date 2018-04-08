syms x y;
% Площадь части плоскости 
z=x
% которая заключена внутри цилиндра
% x^2+y^2=4
% выше плоскости
% z=0

fs=sqrt(1+diff(z,x)^2+diff(z,y)^2)
% 2^(1/2)

syms ro teta;
D=x^2+y^2-4
D=subs(D,[x y],[ro*cos(teta) ro*sin(teta)])
D=simplify(D)
% ro=2

S=int(int(fs*ro,ro,0,2),teta,-pi/2,pi/2)
% 2*pi*2^(1/2)