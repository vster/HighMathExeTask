% Solve equation
% (y^4+2*x)*y'=y

% 1)
clear
syms x y(x)
eqn=(y^4+2*x)*diff(y)==y
ySol=simplify(dsolve(eqn))
%                                                                                       0
%                                                                         2^(1/4)*x^(1/4)
%                                                                        -2^(1/4)*x^(1/4)
% (2^(1/2)*x^(1/4)*((exp(2*C10) + x^(1/2)*((8*x + exp(4*C10))/x)^(1/2))/x^(1/2))^(1/2))/2
% (2^(1/2)*x^(1/4)*((exp(2*C10) - x^(1/2)*((8*x + exp(4*C10))/x)^(1/2))/x^(1/2))^(1/2))/2
%                                                                      2^(1/4)*x^(1/4)*1i
%                                                                     -2^(1/4)*x^(1/4)*1i

% Checking
for i=1:7
chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 

% 2)
clear
% (y^4+2*x)=y*x'
syms y x(y)
eqn=(y^4+2*x)==y*diff(x)
xSol=simplify(dsolve(eqn))
% (y^2*(y^2 + 2*C12))/2

% Checking
for i=1
chk(i)=simplify(subs(eqn,x(y),xSol(i)))
end
% TRUE