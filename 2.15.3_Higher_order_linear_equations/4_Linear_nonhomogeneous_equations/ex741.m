% Show that the general solution of the differential equation 
% diff(y,x,2)-2*alfa*diff(y,x)+(alfa^2-beta^2)*y=0 
% can be represented as 
% y=exp(alfa*x)*(C1*cosh(beta*x)+C2*sinh(beta*x))

% 1)
clear
syms x y(x) alfa beta
syms C1 C2 
ySol=exp(alfa*x)*(C1*cosh(beta*x)+C2*sinh(beta*x))

% Checking
eqn10=diff(y,x,2)-2*alfa*diff(y,x)+(alfa^2-beta^2)*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0