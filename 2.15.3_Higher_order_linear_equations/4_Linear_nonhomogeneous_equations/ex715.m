% Find a solution to the equation 
% y''+y=x*exp(x)+2*exp(-x)

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+y-(x*exp(x)+2*exp(-x))
ySol=simplify(dsolve(eqn))
% exp(-x) - exp(x)/2 + C13*cos(x) + C14*sin(x) + (x*exp(x))/2

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0