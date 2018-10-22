% Find a solution to the equation 
% y''+6y'+10y=80*exp(x)*cos(x)
% satisfying the initial conditions 
% y(0)=4,y'(0)=10

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+6*diff(y,x)+10*y-80*exp(x)*cos(x)
dy(x)=diff(y)
cond=[y(0)==4,dy(0)==10]
ySol=simplify(dsolve(eqn,cond))
% 4*exp(x)*cos(x) + 2*exp(x)*sin(x) + 4*exp(-3*x)*sin(x)

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0