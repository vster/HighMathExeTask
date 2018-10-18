% Find a solution to the equation 
% 2y''-y'=1
% satisfying the initial conditions 
% y(0)=0,y'(0)=1

% 1)
syms x y(x)
eqn=2*diff(y,x,2)-diff(y,x)==1
dy(x)=diff(y)
cond=[y(0)==0,dy(0)==1]
ySol=simplify(dsolve(eqn,cond))
% 4*exp(x/2) - x - 4

% Checking
eqn10=2*diff(y,x,2)-diff(y,x)-1
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0