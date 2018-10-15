% Find a solution to the equation 
% y''+y=0
% satisfying the initial conditions 
% y(0)=1,y(pi/3)=0

% 1)
clear
syms k
eqn=k^2+1
kSol=solve(eqn).'
% [ -1i, 1i]
syms x C1 C2
y=C1*cos(x)+C2*sin(x)
dy=simplify(diff(y))
% C2*cos(x) - C1*sin(x)

eq1=subs(y,x,0)-1
% C1 - 1
eq2=subs(dy,x,pi/3)
% C2/2 - (3^(1/2)*C1)/2

[SolC1 SolC2]=solve([eq1,eq2])
% 1 3^(1/2)
y1=subs(y,[C1 C2],[SolC1 SolC2])
% cos(x) + 3^(1/2)*sin(x)

% 2)
syms x y(x)
eqn=diff(y,x,2)+y==0
dy(x)=diff(y)
cond=[y(0)==1,dy(pi/3)==0]
ySol=simplify(dsolve(eqn,cond))
% 2*cos(x - pi/3)

% Checking
eqn10=diff(y,x,2)+y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0