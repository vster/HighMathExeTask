% Solve equation
% x*(y^6+1)dx+y^2*(x^4+1)dy=0
% y(0)=1

% 1)
clear
% x*dx/(x^4+1)+y^2*dy/(y^6+1)=0
syms x y;
eq1=int(x/(x^4+1),x)+int(y^2/(y^6+1),y)
% atan(x^2)/2 + atan(y^3)/3
syms C;
eq2=eq1+C
eq3=subs(eq2,[x y],[0 1])
% C + pi/12 => C=-pi/12
% atan(x^2)/2 + atan(y^3)/3 = pi/12
% 3*atan(x^2) + 2*atan(y^3) = pi/2

% 2)
% x*(y^6+1)dx+y^2*(x^4+1)dy=0
% y'= -x*(y^6+1)/(y^2*(x^4+1))
clear
syms x y(x);
eqn=diff(y(x),x)==-x*(y^6+1)/(y^2*(x^4+1))
cond=y(0)==1
ySol=dsolve(eqn,cond)
% tan(pi/4 - (3*atan(x^2))/2)^(1/3)
