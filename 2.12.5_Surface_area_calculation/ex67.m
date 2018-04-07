syms x y;
% Найти площадь части конуса
z=sqrt(x^2+y^2)
% заключенной внури цилиндра
% x^2+y^2=2*x

dzx=diff(z,x)
dzy=diff(z,y)

% Область интегрирования D
% x^2+y^2=2*x
% или
% ro=2*cos(teta)

fs=sqrt(1+dzx^2+dzy^2)
fs=simplify(fs)
% 2^(1/2)

S=int(int(fs*ro,ro,0,2*cos(teta)),teta,-pi/2,pi/2)
% pi*2^(1/2)