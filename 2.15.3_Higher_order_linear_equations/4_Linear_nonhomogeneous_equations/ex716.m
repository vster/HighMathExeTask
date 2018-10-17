% Find a solution to the equation 
% y'''+y''-2*y'=x-exp(x)

% 1)
syms x y(x)
eqn=diff(y,x,3)+diff(y,x,2)-2*diff(y,x)==x-exp(x)
ySol=simplify(dsolve(eqn))
% C15/2 - x/4 + exp(x)/9 + C16*exp(x) - (x*exp(x))/3 - x^2/4 + C17*exp(-2*x) - 3/8

% Checking
eqn10=diff(y,x,3)+diff(y,x,2)-2*diff(y,x)-(x-exp(x))
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0