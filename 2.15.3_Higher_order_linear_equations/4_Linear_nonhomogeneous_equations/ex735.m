% Find a solution to the equation 
% y''-4*y=cosh(2*x)

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-4*y==cosh(2*x)
ySol=simplify(dsolve(eqn))
% (exp(-2*x)*(32*C11 - 4*x - exp(4*x) + 4*x*exp(4*x) + 32*C12*exp(4*x) - 1))/32

% Checking
eqn10=diff(y,x,2)-4*y-cosh(2*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0