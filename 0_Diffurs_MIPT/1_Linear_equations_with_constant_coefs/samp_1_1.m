% Find the real solutions of equation
% diff(y,x,4)+4*diff(y,x,2)=8*exp(2*x)+8*x^2

clear
syms x y(x)
eqn=diff(y,x,4)+4*diff(y,x,2)==8*exp(2*x)+8*x^2
ySol=simplify(dsolve(eqn))
% exp(2*x)/4 - C43/4 - (C42*x)/4 - x^2/2 + x^4/6 + C44*cos(2*x) + C45*sin(2*x) + 1/4