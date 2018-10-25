clear
syms t x(t) y(t) m
eqn1=diff(x,t,2)+m^2*y
eqn2=diff(y,t,2)-m^2*x
eqns=[eqn1,eqn2]
[xSol ySol]=dsolve(eqns)
xSol=simplify(xSol)
ySol=simplify(ySol)
%xSol =
% (C25*exp(t*(-m^4)^(1/4))*(-m^4)^(1/4) - C26*exp(-t*(-m^4)^(1/4))*(-m^4)^(1/4) - C27*exp(-t*(-m^4)^(1/4)*1i)*(-m^4)^(1/4)*1i + C28*exp(t*(-m^4)^(1/4)*1i)*(-m^4)^(1/4)*1i)/m^2
%ySol =
% -(C25*exp(t*(-m^4)^(1/4))*(-m^4)^(3/4) - C26*exp(-t*(-m^4)^(1/4))*(-m^4)^(3/4) + C27*exp(-t*(-m^4)^(1/4)*1i)*(-m^4)^(3/4)*1i - C28*exp(t*(-m^4)^(1/4)*1i)*(-m^4)^(3/4)*1i)/m^4

% Checking
chk1=simplify(subs(eqn1,[x y],[xSol ySol])) 
chk2=simplify(subs(eqn2,[x y],[xSol ySol]))     
% 0 0