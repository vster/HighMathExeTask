% Find a solution to the equation 
% y''+y=tan(x)
% satisfying the initial conditions 
% y(0)=0,y(pi/6)=0

% 1)
syms x y(x)
eqn=diff(y,x,2)+y==tan(x)
dy(x)=diff(y)
cond=[y(0)==0,y(pi/6)==0]
ySol=simplify(dsolve(eqn,cond))
% - 2*atanh(tan(x/2))*cos(x) - 2*3^(1/2)*atanh(3^(1/2) - 2)*sin(x)

% Checking
eqn10=diff(y,x,2)+y-tan(x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0