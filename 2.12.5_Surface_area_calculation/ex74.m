syms x y;
% The area of the cone part
z=sqrt(x^2-y^2)
% located inside the cylinder
% x^2+y^2=1

dzx=diff(z,x)
dzy=diff(z,y)

fs=sqrt(1+dzx^2+dzy^2)
fs=simplify(fs)
% ((2*x^2)/(x^2 - y^2))^(1/2)

syms ro teta;
x1=ro*cos(teta)
y1=ro*sin(teta)
fs=subs(fs,[x y],[x1 y1])
fs=simplify(fs)

S1=int(fs*ro,ro,0,1)
S=int(S1,teta,0,pi)

% Не получается :(