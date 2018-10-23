% Find a solution to the equation 
% y''-6*y'+5*y=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-6*diff(y,x)+5*y==0
ySol=simplify(dsolve(eqn))
% C5*exp(x) + C4*exp(5*x)

% Checking
eqn10=diff(y,x,2)-6*diff(y,x)+5*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0