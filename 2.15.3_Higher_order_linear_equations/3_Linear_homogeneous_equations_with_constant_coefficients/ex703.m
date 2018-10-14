% Find a solution to the equation 
% y''+5*y'+6*y=0
% satisfying the initial conditions 
% y(0)=1,y'(0)=-6.

% 1)
clear
syms k
eqn=k^2+5*k+6
kSol=solve(eqn).'
% [ -3, -2]
syms x C1 C2
y=C1*exp(-2*x)+C2*exp(-3*x)
dy=diff(y)
% - 2*C1*exp(-2*x) - 3*C2*exp(-3*x)

eq1=subs(y,x,0)-1
% C1 + C2 - 1
eq2=subs(dy,x,0)+6
% - 2*C1 - 3*C2 + 6

[SolC1 SolC2]=solve([eq1,eq2])
% -3 4
y1=subs(y,[C1 C2],[SolC1 SolC2])
% 4*exp(-3*x) - 3*exp(-2*x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)+5*diff(y,x)+6*y==0
dy(x)=diff(y)
cond=[y(0)==1,dy(0)==-6]
ySol=simplify(dsolve(eqn,cond))
% -exp(-3*x)*(3*exp(x) - 4)

% Checking
eqn10=diff(y,x,2)+5*diff(y,x)+6*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0


