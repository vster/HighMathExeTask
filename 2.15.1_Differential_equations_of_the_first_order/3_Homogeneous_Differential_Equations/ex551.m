% x*y+y^2=(2*x^2+x*y)*y'
% y'=(x*y+y^2)/(2*x^2+x*y)

syms x y(x);
eqn=diff(y,x)==(x*y+y^2)/(2*x^2+x*y)
ySol=dsolve(eqn)
%                                0
% 2*x*lambertw(0, C14/(2*x^(1/2)))
syms C14
ySol2=2*x*lambertw(0, C14/(2*x^(1/2)))

eq5=x*y+y^2-(2*x^2+x*y)*diff(y,x)
eq6=subs(eq5,y,ySol2)
eq6=simplify(eq6)
% 0