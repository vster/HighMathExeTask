% Solve equation
% y''*(2*y+3)-2*y'^2=0

% 1)
clear
syms x real
syms y(x)
assume(y(x),'real')
eqn=diff(y,x,2)*(2*y+3)-2*diff(y,x)^2==0
ySol=simplify(dsolve(eqn))
%                       C12
%  (C11*exp(C10*x))/2 - 3/2

% Checking
eqn10=diff(y,x,2)*(2*y+3)-2*diff(y,x)^2
for i=1:length(ySol)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]