% Find a solution to the equation 
% y''+4y=sin(2*x)+1
% satisfying the initial conditions 
% y(0)=1/4,y'(0)=0

% 1)
clear
syms x y(x)
eqn=diff(y,x,2)+4*y==sin(2*x)+1
dy(x)=diff(y)
cond=[y(0)==1/4,dy(0)==0]
ySol=simplify(dsolve(eqn,cond))
% sin(2*x)/8 - (x*cos(2*x))/4 + 1/4

% Checking
eqn10=diff(y,x,2)+4*y-(sin(2*x)+1)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0