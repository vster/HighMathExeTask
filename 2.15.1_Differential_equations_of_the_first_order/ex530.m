% Solve equation
% y'=sqrt((a^2-y^2)/(a^2-x^2))

clear
% dy/dx=sqrt((a^2-y^2)/(a^2-x^2))
% dy/sqrt(a^2-y^2)=dx/sqrt(a^2-x^2)
syms x y a;
eq1=int(1/sqrt(a^2-y^2),y)-int(1/sqrt(a^2-x^2),x)
% atan(y/(a^2 - y^2)^(1/2)) - atan(x/(a^2 - x^2)^(1/2))
% y*(a^2 - x^2)^(1/2) - x*(a^2 - y^2)^(1/2) = C

% 2)
clear
syms x y(x) a;
eqn=diff(y(x),x)==sqrt((a^2-y^2)/(a^2-x^2))
ySol=dsolve(eqn)
%                                                                                    a
%                                                                                   -a
% (exp(C13)*(exp(-2*C13)*(x + (x^2 - a^2)^(1/2))^2 + a^2))/(2*(x + (x^2 - a^2)^(1/2)))

