% Solve equation
% y''+x*y'+y=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+x*diff(y,x)+y
ySol=simplify(dsolve(eqn))
% (exp(-x^2/2)*(2*C42 + 2^(1/2)*C41*pi^(1/2)*erf((2^(1/2)*x*1i)/2)*1i))/2

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0