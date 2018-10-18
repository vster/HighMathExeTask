% Find a solution to the equation 
% y''-8y'+16y=exp(4x)
% satisfying the initial conditions 
% y(0)=0,y'(0)=1

% 1)
syms x y(x)
eqn=diff(y,x,2)-8*diff(y,x)+16*y==exp(4*x)
dy(x)=diff(y)
cond=[y(0)==0,dy(0)==1]
ySol=simplify(dsolve(eqn,cond))
% (x*exp(4*x)*(x + 2))/2

% Checking
eqn10=diff(y,x,2)-8*diff(y,x)+16*y-exp(4*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0