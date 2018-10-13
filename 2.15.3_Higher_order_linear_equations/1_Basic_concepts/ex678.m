% Integrate the equation
% y''*sin(x)^2=2*y
% having a particular solution 
% y1=cot(x)

% 1)
clear
syms x
syms y(x)
eqn=diff(y,x,2)*sin(x)==2*y
% ySol=dsolve(eqn)
% [ empty sym ]

% 2)
syms x y dy d2y 
eq1=d2y*sin(x)^2-2*y
y1=cot(x)

syms z(x)
y2=y1*int(z,x)
% cot(x)*int(z(x), x)
dy2=diff(y2,x)
% cot(x)*z(x) - (cot(x)^2 + 1)*int(z(x), x)
d2y2=diff(dy2,x)
% cot(x)*diff(z(x), x) - 2*z(x)*(cot(x)^2 + 1) + 2*cot(x)*(cot(x)^2 + 1)*int(z(x), x)
eq2=simplify(subs(eq1,[y dy d2y],[y2 dy2 d2y2]))
% (cos(x)*diff(z(x), x))/sin(x) - 2*z(x) - (cos(x)^3*diff(z(x), x))/sin(x)
% 2*sin(x)*z+z'*(cos(x)^3-cos(x))=0
% 2*sin(x)*z+z'*cos(x)*(-sin(x)^2)=0
% 2*z-sin(x)*cos(x)*z'=0
% 2*dx/(sin(x)*cos(x))-dz/z=0
eq3=2*int(1/(sin(x)*cos(x)),x)-log(z)
% z=C1*tan(x)^2
syms C1 C2
eq4=int(C1*tan(x)^2,x)
% -C1*(x - tan(x))+C2
y2=simplify(cot(x)*(C2-C1*(x - tan(x))))
% y=C1+cot(x)*(C2-C1*x)

% 3)
syms x
a1=0
y1=cot(x)
y2=simplify(y1*int(exp(-int(a1,x))/y1^2))
% -(x - tan(x))/tan(x) =1-x*cot(x)
% y=C1*cot(x)+C2*(1-x*cot(x))