% Find a solution to the equation 
% y''-y'=cosh(2*x)
% satisfying the initial conditions 
% y(0)=0,y'(0)=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)-diff(y,x)-cosh(2*x)
dy(x)=diff(y)
cond=[y(0)==0,dy(0)==0]
ySol=simplify(dsolve(eqn,cond))
% exp(x)*(exp(-3*x)/12 + exp(x)/4) - exp(x)/3

% Checking
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn,y(x),ySol(i)))
end
% 0