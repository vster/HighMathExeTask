% Find a solution to the equation 
% y''+3y'-10y=x*exp(-2*x)

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+3*diff(y,x)-10*y==x*exp(-2*x)
ySol=simplify(dsolve(eqn))
% (exp(-5*x)*(144*C15 + exp(3*x) - 12*x*exp(3*x) + 144*C14*exp(7*x)))/144

% Checking
eqn10=diff(y,x,2)+3*diff(y,x)-10*y-x*exp(-2*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0