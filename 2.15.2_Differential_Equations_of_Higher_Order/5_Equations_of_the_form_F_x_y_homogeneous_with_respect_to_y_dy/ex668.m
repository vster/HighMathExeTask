% Solve equation
% y*y''-y'^2=0

% 1)
clear
syms x y(x)
eqn=y*diff(y,x,2)-diff(y,x)^2==0
ySol=simplify(dsolve(eqn))
%            C19
% C18*exp(C17*x)

% Checking
eqn10=y*diff(y,x,2)-diff(y,x)^2
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]