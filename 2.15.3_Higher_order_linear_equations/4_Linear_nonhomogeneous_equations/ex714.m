% Find a solution to the equation 
% y''-2y'+2y=x^2

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-2*diff(y,x)+2*y-x^2
ySol=simplify(dsolve(eqn))
% x + x^2/2 + C11*exp(x)*cos(x) + C12*exp(x)*sin(x) + 1/2

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0