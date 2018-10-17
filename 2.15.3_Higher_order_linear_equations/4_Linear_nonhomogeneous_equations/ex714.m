% Find a solution to the equation 
% y''-2y'+2y=x^2

% 1)
syms x y(x)
eqn=diff(y,x,2)-2*diff(y,x)+2*y==x^2
ySol=simplify(dsolve(eqn))
% 2*y(x) - 2*diff(y(x), x) - x^2 + diff(y(x), x, x)

% Checking
eqn10=diff(y,x,2)-2*diff(y,x)+2*y-x^2
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0