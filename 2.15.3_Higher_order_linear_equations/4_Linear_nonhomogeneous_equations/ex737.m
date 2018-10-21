% Find a solution to the equation 
% y''-2*y'+2*y=exp(x)*sin(x)

% 1)
clear
syms x y(x) phi
eqn=diff(y,x,2)-2*diff(y,x)+2*y==exp(x)*sin(x)
ySol=simplify(dsolve(eqn))
% (exp(x)*(sin(x) + 2*C1*cos(x) + 2*C2*sin(x) - x*cos(x)))/2

% Checking
eqn10=diff(y,x,2)-2*diff(y,x)+2*y-exp(x)*sin(x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0