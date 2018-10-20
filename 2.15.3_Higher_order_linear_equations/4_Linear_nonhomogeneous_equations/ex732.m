% Find a solution to the equation 
% diff(y,x,2)-y==x*cos(x)^2

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-y==x*cos(x)^2
ySol=simplify(dsolve(eqn))
% (2*sin(2*x))/25 - x/2 - (x*cos(2*x))/10 + C6*exp(x) + C5*exp(-x)

% Checking
eqn10=diff(y,x,2)-y-x*cos(x)^2
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0