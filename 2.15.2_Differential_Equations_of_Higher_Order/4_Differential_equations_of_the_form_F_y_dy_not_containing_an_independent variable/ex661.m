% Solve equation
% a^2*y''^2=1+y'^2

% 1)
clear
syms x y(x) a
eqn=a^2*diff(y,x,2)^2==1+diff(y,x)^2
ySol=simplify(dsolve(eqn))
% C18 + exp((C35 + x)/a)/2 + (a^2*exp(-(C35 + x)/a))/2
% C21 + exp((C27 + x)/a)/2 + (a^2*exp(-(C27 + x)/a))/2
% C21 + exp((C24 - x)/a)/2 + (a^2*exp(-(C24 - x)/a))/2
% C18 + exp((C32 - x)/a)/2 + (a^2*exp(-(C32 - x)/a))/2
%                                           C30 + x*1i
%                                           C29 - x*1i

% Checking
eqn10=a^2*diff(y,x,2)^2-(1+diff(y,x)^2)
for i=1:6
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0, 0, 0, 0]