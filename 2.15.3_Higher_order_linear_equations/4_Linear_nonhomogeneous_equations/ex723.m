% Find a solution to the equation 
% y''-6y'+25y=2*sin(x)+3*cos(x)

% 1)
syms x y(x)
eqn=diff(y,x,2)-6*diff(y,x)+25*y==2*sin(x)+3*cos(x)
ySol=simplify(dsolve(eqn,cond))
% cos(4*x)*((5*cos(3*x))/48 + (9*cos(5*x))/272 + sin(3*x)/48 + (19*sin(5*x))/272) - sin(4*x)*(cos(3*x)/48 + (19*cos(5*x))/272 - (5*sin(3*x))/48 - (9*sin(5*x))/272) - (7*cos(4*x)*exp(3*x))/51 + (139*sin(4*x)*exp(3*x))/408

% Checking
eqn10=diff(y,x,2)-6*diff(y,x)+25*y-(2*sin(x)+3*cos(x))
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0