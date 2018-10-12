% Solve equation
% 1+y'^2=y*y''

% 1)
clear
syms x real
syms y(x)
assume(y(x),'real')
eqn=1+diff(y,x)^2==y*diff(y,x,2)
ySol=simplify(dsolve(eqn))
%  cosh(C28^(1/2)*(C34 + x))/C28^(1/2)
%  cosh(C28^(1/2)*(C31 - x))/C28^(1/2)
%                          C37 + x*1i
%                          C36 - x*1i

% Checking
eqn10=1+diff(y,x)^2-y*diff(y,x,2)
for i=1:length(ySol)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0, 0]