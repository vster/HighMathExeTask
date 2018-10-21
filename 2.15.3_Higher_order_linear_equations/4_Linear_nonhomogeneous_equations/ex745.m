% Find a solution to the equation 
% y''+4*y=cot(2*x)

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+4*y==cot(2*x)
ySol=simplify(dsolve(eqn))
% C16*cos(2*x) - (sin(2*x)*atanh(cos(2*x)))/4 + C17*sin(2*x)

% Checking
eqn10=diff(y,x,2)+4*y-cot(2*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0