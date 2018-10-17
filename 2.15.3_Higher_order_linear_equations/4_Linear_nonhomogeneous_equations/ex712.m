% Find a solution to the equation 
% y''+y'-2y=cos(x)-3*sin(x)
% satisfying the initial conditions 
% y(0)=1,y'(0)=2

% 1)
syms x y(x)
eqn=diff(y,x,2)+diff(y,x)-2*y==cos(x)-3*sin(x)
dy(x)=diff(y)
cond=[y(0)==1,dy(0)==2]
ySol=simplify(dsolve(eqn,cond))
% exp(x) + sin(x)

% Checking
eqn10=diff(y,x,2)+diff(y,x)-2*y-(cos(x)-3*sin(x))
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0