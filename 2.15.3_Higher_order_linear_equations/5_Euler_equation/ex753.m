% Solve equation
% x^2*y''+x*y'+y=sin(2*log(x))

% 1)
clear
syms x y(x)
eqn=x^2*diff(y,x,2)+x*diff(y,x)+y-sin(2*log(x))
ySol=simplify(dsolve(eqn==0))
% C31*cos(log(x)) + C30*sin(log(x)) - (2*cos(log(x))*sin(log(x)))/3

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0