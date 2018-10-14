% Find a solution to the equation 
% 9y''+y=0
% satisfying the initial conditions 
% y(3*pi/2)=2,y'(3*pi/2)=0

% 1)
clear
syms k
eqn=9*k^2+1
kSol=solve(eqn).'
% [ -1i/3, 1i/3]
syms x C1 C2
y=C1*cos(x/3)+C2*sin(x/3)
dy=simplify(diff(y))
% (C2*cos(x/3))/3 - (C1*sin(x/3))/3

eq1=subs(y,x,3*pi/2)-2
% C2 - 2
eq2=subs(dy,x,3*pi/2)
% -C1/3

[SolC1 SolC2]=solve([eq1,eq2])
% 0 2
y1=subs(y,[C1 C2],[SolC1 SolC2])
% 2*sin(x/3)

% 2)
clear
syms x y(x)
eqn=9*diff(y,x,2)+y==0
dy(x)=diff(y)
cond=[y(3*pi/2)==2,dy(3*pi/2)==0]
ySol=simplify(dsolve(eqn,cond))
% 2*sin(x/3)

% Checking
eqn10=9*diff(y,x,2)+y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0