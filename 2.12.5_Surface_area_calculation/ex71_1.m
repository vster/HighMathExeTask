% Area of the sphere
% x^2+y^2+z^2=4
% cut by a cylinder
% x^2/4+y^2=1

syms x y;
z=sqrt(4-x^2-y^2)

dzx=diff(z,x)
dzy=diff(z,y)

fs=sqrt(1+dzx^2+dzy^2)
fs=simplify(fs)
% 2*(-1/(x^2 + y^2 - 4))^(1/2)

syms ro teta;
fs=subs(fs,[x y],[ro*cos(teta) ro*sin(teta)])
fs=simplify(fs)
% 2*(-1/(ro^2 - 4))^(1/2)

D=x^2/4+y^2-1
D=subs(D,[x y],[ro*cos(teta) ro*sin(teta)])
D=simplify(D)

slv=solve(D==0,ro)
% ro=2/(3*sin(teta)^2 + 1)^(1/2)

S1=int(fs*ro,ro,0,2/(3*sin(teta)^2 + 1)^(1/2))
S1=simplify(S1)
pretty(S1)
S=4*int(S1,teta,0,pi)
% (16*pi)/3