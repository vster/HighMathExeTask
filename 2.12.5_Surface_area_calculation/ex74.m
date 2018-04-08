syms x y;
% Площадь части конуса
z=sqrt(x^2-y^2)
% расположенной внутри цилиндра
% x^2+y^2=1

dzx=diff(z,x)
dzy=diff(z,y)

fs=sqrt(1+dzx^2+dzy^2)
fs=simplify(fs)
% ((2*x^2)/(x^2 - y^2))^(1/2)

syms ro teta;
fs=subs(fs,[x y],[ro*cos(teta) ro*sin(teta)])
fs=simplify(fs)

S1=int(fs*ro,ro,0,1)
S=int(S1,teta,0,pi)

% Не получается :(