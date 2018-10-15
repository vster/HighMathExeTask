% Find a solution to the equation 
% y''+9y=0
% satisfying the initial conditions 
% y(0)=0,y(pi/4)=1

% 1)
clear
syms k
eqn=k^2+9
kSol=solve(eqn).'
% [ -3i, 3i]
syms x C1 C2
y=C1*cos(3*x)+C2*sin(3*x)
dy=simplify(diff(y))
% 3*C2*cos(3*x) - 3*C1*sin(3*x)

eq1=subs(y,x,0)
% C1
eq2=subs(dy,x,pi/4)-1
% - (3*2^(1/2)*C1)/2 - (3*2^(1/2)*C2)/2 - 1

[SolC1 SolC2]=solve([eq1,eq2])
% 0 -2^(1/2)/3
y1=subs(y,[C1 C2],[SolC1 SolC2])
% -(2^(1/2)*sin(3*x))/3

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)+9*y==0
dy(x)=diff(y)
cond=[y(0)==0,dy(pi/4)==1]
ySol=simplify(dsolve(eqn,cond))
% -(2^(1/2)*sin(3*x))/3

% Checking
eqn10=diff(y,x,2)+9*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0