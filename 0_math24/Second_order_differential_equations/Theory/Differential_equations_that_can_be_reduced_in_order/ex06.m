% Solve equation
% y*y''=y'^2-3*y^2/sqrt(x)

% 1)
clear
syms x y(x)
assume(y(x),'real')
eqn=y*diff(y,x,2)==diff(y,x)^2-3*y^2/sqrt(x)
ySol=dsolve(eqn)
%                             0
%  exp(C29 + C28*x - 4*x^(3/2))

% Checking
eqn10=y*diff(y,x,2)-(diff(y,x)^2-3*y^2/sqrt(x))
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]