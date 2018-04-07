% z=f(x,y)
% S = int int sqrt(1+diff(z,x)^2+diff(z,y)^2) dx*dy

% Найти площадь части сферы
% x^2+y^2+z^2=a^2
% заключенной внутри цилиндра
% x^2+y^2=a*y

syms x y a;
z=sqrt(a^2-x^2-y^2)
dzx=diff(z,x)
dzy=diff(z,y)

fs=sqrt(1+dzx^2+dzy^2)
fs=simplify(fs)
fs=a/sqrt(a^2-x^2-y^2)

% S=4*int(int(ff),D)

syms ro teta real;
x=ro*cos(teta)
y=ro*sin(teta)
fs=a/sqrt(a^2-x^2-y^2)
fs=simplify(fs)
% a/(a^2 - ro^2)^(1/2)

S1=int(fs*ro,ro,0,a*sin(teta))
% S1=a*int(ro/(a^2 - ro^2)^(1/2),ro,0,a*sin(teta))
S1=a*((a^2)^(1/2) - (a^2*cos(teta)^2)^(1/2))
S1=a^2*(1-cos(teta))
S=4*int(S1,teta,0,pi/2)
% 2*a^2*(pi - 2)

