clear
syms x y(x)
eqn=diff(y,x,3)-3*diff(y,x,2)+4*diff(y)-12*y-((1-26*x)*exp(3*x)+30*cos(3*x))
ySol=simplify(dsolve(eqn))
% 2^(1/2)*cos(3*x + pi/4) - (4*exp(3*x))/13 + x*exp(3*x) - x^2*exp(3*x) + C1*cos(2*x) + C3*exp(3*x) + C2*sin(2*x)
% Checking
chk=simplify(subs(eqn,y(x),ySol))
% 0