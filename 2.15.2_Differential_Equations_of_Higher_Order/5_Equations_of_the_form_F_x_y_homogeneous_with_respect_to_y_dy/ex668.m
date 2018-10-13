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

% 2)
% y*y''-y'^2=0
% y''/y-y'^2/y^2=0
% Put y'/y=z => y''/y-y'^2/y^2=z'
% z'=0 => z=C1
% y'=C1*y => dy/y=C1*dx => 
% log(y)=C1*x+C2
% y=exp(C1*x+C2)
