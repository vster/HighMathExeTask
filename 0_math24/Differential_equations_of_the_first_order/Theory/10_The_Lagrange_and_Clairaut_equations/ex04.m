% % Find the general and singular solutions of equation
% y=x*y'+sqrt((y')^2+1)

% Clairaut's equation
clear
syms x real
syms y(x)
assume (y(x),'real')
eqn=y==x*diff(y)+sqrt(diff(y)^2+1)
ySol=dsolve(eqn)
%                                                                                   C31*x + (C31^2 + 1)^(1/2)
%  (x^2*(-1/((x - 1)*(x + 1)))^(1/2) - (-1/((x - 1)*(x + 1)))^(1/2) + x^2*(-(x - 1)*(x + 1))^(1/2))/(x^2 - 1)
% -((-1/((x - 1)*(x + 1)))^(1/2) - x^2*(-1/((x - 1)*(x + 1)))^(1/2) + x^2*(-(x - 1)*(x + 1))^(1/2))/(x^2 - 1)

% Checking
for i=1:3
eqn10=y-x*diff(y)-sqrt(diff(y)^2+1)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
disp(chk')