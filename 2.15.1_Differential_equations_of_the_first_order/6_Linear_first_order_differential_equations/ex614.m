% Solve equation
% (2*x*y+3)*dy-y^2*dx=0

% 1)
clear
syms x y(x)
eqn=(2*x*y+3)*diff(y)-y^2==0
ySol=simplify(dsolve(eqn))
%                                               0
%                                            -1/x
% root(z^3 - x^3*z*exp(C6) - x^3*exp(C6), z, 1)/x

% Checking
for i=1:3
eqn10=(2*x*y+3)*diff(y)-y^2==0
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ TRUE, TRUE,...]

% 2)
clear
% (2*x*y+3)-y^2*diff(x)=0
syms y x(y)
eqn=(2*x*y+3)-y^2*diff(x)==0
xSol=simplify(dsolve(eqn))
% C8*y^2 - 1/y

% Checking
for i=1
eqn10=(2*x*y+3)-y^2*diff(x)==0
chk(i)=simplify(subs(eqn10,x(y),xSol(i)))
end
% TRUE