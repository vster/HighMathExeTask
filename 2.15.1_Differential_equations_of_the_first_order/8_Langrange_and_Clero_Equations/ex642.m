% Solve equation
% 2*y*(y'+1)=x*y'^2

% 1)
clear
syms x y(x) a b
assume(y(x),'real')
eqn=2*y*(diff(y)+1)==x*diff(y)^2
ySol=simplify(dsolve(eqn))
%                                        0
%                                     -2*x
% piecewise(C30 ~= 0, (C30 - x)^2/(2*C30))

% Checking
eqn10=2*y*(diff(y)+1)-x*diff(y)^2
for i=1:3
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, piecewise(C30 ~= 0, 0)]