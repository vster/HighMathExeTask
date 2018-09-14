% (x^4+6*x^2*y^2+y^4)*dx+4*x*y*(x^2+y^2)*dy=0
% y(1)=0

clear
% 1)
% y'=-(x^4+6*x^2*y^2+y^4)/(4*x*y*(x^2+y^2))
syms x y(x)
eqn=diff(y(x))==-(x^4+6*x^2*y^2+y^4)/(4*x*y*(x^2+y^2))
cond=y(1)==0
ySol=dsolve(eqn,cond)
%  ((((4*x*(4*x^5 + 1))/5)^(1/2) - 2*x^3)/(2*x))^(1/2)
% -((((4*x*(4*x^5 + 1))/5)^(1/2) - 2*x^3)/(2*x))^(1/2)
ySol2=ySol(1)

% Checking
eq10=(x^4+6*x^2*y^2+y^4)+4*x*y*(x^2+y^2)*diff(y(x))
eq11=subs(eq10,y,ySol2)
eq11=simplify(eq11)
% 0