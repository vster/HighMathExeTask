% Find a solution to the equation 
% y''+3y'=0
% satisfying the initial conditions 
% y(0)=1,y'(0)=2

% 1)
clear
syms k
eqn=k^2+3*k
kSol=solve(eqn).'
% -3 0
syms x C1 C2
y=C1*exp(-3*x)+C2
dy=simplify(diff(y))
% -3*C1*exp(-3*x)

eq1=subs(y,x,0)-1
% C1 + C2 - 1
eq2=subs(dy,x,0)-2
% - 3*C1 - 2

[SolC1 SolC2]=solve([eq1,eq2])
% -2/3 5/3
y1=subs(y,[C1 C2],[SolC1 SolC2])
% 5/3 - (2*exp(-3*x))/3

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)+3*diff(y,x)==0
dy(x)=diff(y)
cond=[y(0)==1,dy(0)==2]
ySol=simplify(dsolve(eqn,cond))
% 5/3 - (2*exp(-3*x))/3

% Checking
eqn10=diff(y,x,2)+3*diff(y,x)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0