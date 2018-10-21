% Find a solution to the equation 
% y''+5*y'+6*y=1/(1+exp(2*x))

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+5*diff(y,x)+6*y==1/(1+exp(2*x))
ySol=simplify(dsolve(eqn))
% exp(-3*x)*(C15 + atan(exp(x)) - exp(x) + (log(exp(2*x) + 1)*exp(x))/2 + C14*exp(x))

% Checking
eqn10=diff(y,x,2)+5*diff(y,x)+6*y-1/(1+exp(2*x))
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0