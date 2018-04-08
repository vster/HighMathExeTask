syms x z;
y=x^2+z^2
% D: x^2+z^2=1

fs=sqrt(1+diff(y,x)^2+diff(y,z)^2)
% (4*x^2 + 4*z^2 + 1)^(1/2)
syms ro teta;
fs=subs(fs,[x z],[ro*cos(teta) ro*sin(teta)])
fs=simplify(fs)
% (4*ro^2 + 1)^(1/2)

S=int(int(fs*ro,ro,0,1),teta,0,pi/2)
% (pi*(5*5^(1/2) - 1))/24
