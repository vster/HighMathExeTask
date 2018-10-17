% Find a solution to the equation 
% y''-2y'-3y=exp(4*x)
% satisfying the initial conditions 
% y(log(2))=1,y(2*log(2))=1

% 1)
syms x y(x)
eqn=diff(y,x,2)-2*diff(y,x)-3*y==exp(4*x)
dy(x)=diff(y)
cond=[y(log(sym(2)))==1,y(sym(2)*log(sym(2)))==1]
ySol=simplify(dsolve(eqn,cond))
% (exp(-x)*(120*exp(5*x) - 491*exp(4*x) + 5216))/600

% Checking
eqn10=diff(y,x,2)-2*diff(y,x)-3*y-exp(4*x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0