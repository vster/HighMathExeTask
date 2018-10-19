% Find a solution to the equation 
% y''-4*y'=2*sinh(2*x)

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-4*diff(y,x)==2*sinh(2*x)
ySol=simplify(dsolve(eqn))
% C10/4 - exp(-2*x)/12 - exp(2*x)/4 + C11*exp(4*x)

% Checking
eqn10=diff(y,x,2)-4*diff(y,x)-2*sinh(2*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0