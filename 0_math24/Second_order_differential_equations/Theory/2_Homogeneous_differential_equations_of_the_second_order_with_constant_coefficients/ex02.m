% Find a solution to the equation 
% y''-6*y'+9*y=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-6*diff(y,x)+9*y
ySol=simplify(dsolve(eqn))
% exp(3*x)*(C6 + C7*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0

% 2)
syms C1 C2
y2=opercalc(eqn,C1,C2,0)
% C1*exp(3*x) - x*exp(3*x)*(3*C1 - C2)
% C5*exp(3*x) + C6*x*exp(3*x)