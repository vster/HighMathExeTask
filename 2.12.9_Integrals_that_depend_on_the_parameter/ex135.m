syms x alfa beta;
assume(alfa>0)
assume(beta>0)
I=int((exp(-alfa*x^2)-exp(-beta*x^2))/x^2,x,0,inf)
% -pi^(1/2)*(alfa^(1/2) - beta^(1/2))