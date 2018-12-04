% Determine the shape of the rope of the suspension bridge.
% D_P=mu*dx
% T0*d(y')=d_P(x)=mu*dx => y''=mu/T0

syms x mu T0
syms y(x)
eqn=diff(y,x,2)-mu/T0
ySol=dsolve(eqn)
% (mu*x^2)/(2*T0) + C5*x + C6