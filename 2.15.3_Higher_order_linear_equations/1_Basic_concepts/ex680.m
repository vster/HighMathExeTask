% Integrate the equation
% y''+(tan(x)-2*cot(x))*y'+2*cot(x)^2*y=0
% having a particular solution 
% y=sin(x)

% 1)
clear
syms x
syms y(x)
eqn=diff(y,x,2)+(tan(x)-2*cot(x))*diff(y,x)+2*cot(x)^2*y==0
% ySol=dsolve(eqn)
% [ empty sym ]

% 2)
clear
syms x y dy d2y 
eq1=d2y+(tan(x)-2*cot(x))*dy+2*cot(x)^2*y
y1=sin(x)

syms z(x)
y2=y1*int(z,x)
% sin(x)*int(z(x), x)
dy2=diff(y2,x)
% cos(x)*int(z(x), x) + sin(x)*z(x)
d2y2=diff(dy2,x)
% sin(x)*diff(z(x), x) - sin(x)*int(z(x), x) + 2*cos(x)*z(x)
eq2=simplify(subs(eq1,[y dy d2y],[y2 dy2 d2y2]))
% (sin(x)*(cos(x)*diff(z(x), x) + sin(x)*z(x)))/cos(x)
% dz/dx+tan(x)*z=0
% dz/z+tan(x)*dx=0
syms z1
eq3=int(1/z1,z1)+int(tan(x),x)
% log(z1) - log(cos(x))
syms C1 C2
% z1=C1*cos(x)
Iz=int(C1*cos(x),x)
% C1*sin(x)+C2
% y3=sin(x)*(C1*sin(x)+C2)

% 3)
syms x
a1=tan(x)-2*cot(x)
y1=sin(x)
y2=simplify(y1*int(exp(-int(a1,x))/y1^2))
% -(cos(x)*(cos(x)^2 - 1))/abs(cos(x))
% sin(x)^2
% y=C1*sin(x)+C2*sin(x)^2