syms x z;
eq1=tanh(x/2)^2-(cosh(x)-1)/(cosh(x)+1)
eq2=tanh(x/2)^2-(z-1)/(z+1)
slv=solve(eq2,z)
% cosh(x) = (tanh(x/2)^2 + 1)/(1 - tanh(x/2)^2)

% sinh(x)^2=cosh(x)^2-1
eq3=(-(tanh(x/2)^2 + 1)/(tanh(x/2)^2 - 1))^2-1
eq3=factor(eq3)
pretty(eq3)
% sinh(x) = eq4
eq4=(2*tanh(x/2))/(1 - tanh(x/2)^2)
pretty(eq4)
% sinh(x) = 2*tanh(x/2)/(1 - tanh(x/2)^2)