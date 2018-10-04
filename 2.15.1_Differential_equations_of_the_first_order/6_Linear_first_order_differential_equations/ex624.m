% Solve equation
% (y^2+2*y+x^2)*y'+2*x=0
% x(0)=1

% 1)
clear
% (y^2+2*y+x^2)*dy/dx+2*x=0
% (y^2+2*y+x^2)+2*x*dx/dy=0
syms y x(y)
eqn=(y^2+2*y+x^2)+2*x*diff(x)==0
cond=x(0)==1
xSol=simplify(dsolve(eqn))
%  (y*(exp(C28 - y) - y^2)^(1/2))/abs(y)
% -(y*(exp(C28 - y) - y^2)^(1/2))/abs(y)
%                                   y*1i
%                                  -y*1i

% Checking
eqn10=(y^2+2*y+x^2)+2*x*diff(x)
for i=1:4
chk(i)=simplify(subs(eqn10,x(y),xSol(i)))
end