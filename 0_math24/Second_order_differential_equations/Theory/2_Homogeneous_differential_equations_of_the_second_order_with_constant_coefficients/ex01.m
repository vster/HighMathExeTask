% Find a solution to the equation 
% y''-6*y'+5*y=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-6*diff(y,x)+5*y
ySol=simplify(dsolve(eqn))
% C5*exp(x) + C4*exp(5*x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0

% 2)
syms C1 C2
y2=opercalc(eqn,C1,C2,0)
% exp(x)*((5*C1)/4 - C2/4) - exp(5*x)*(C1/4 - C2/4)
% C5*exp(x) + C6*exp(5*x)