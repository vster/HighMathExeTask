% Find a solution to the equation 
% y''-2*y'+10y=0
% satisfying the initial conditions 
% y(pi/6)=0,y'(pi/6)=exp(pi/6)

% 1)
clear
syms k
eqn=k^2-2*k+10
kSol=solve(eqn).'
% [ 1 - 3i, 1 + 3i]
syms x C1 C2
y=exp(x)*(C1*cos(3*x)+C2*sin(3*x))
dy=simplify(diff(y))
% exp(x)*(C1*cos(3*x) + C2*sin(3*x)) + exp(x)*(3*C2*cos(3*x) - 3*C1*sin(3*x))

eq1=subs(y,x,pi/6)
% C2*exp(pi/6)
eq2=subs(dy,x,pi/6)-exp(sym(pi/6))
% C2*exp(pi/6) - 3*C1*exp(pi/6) - exp(pi/6)

[SolC1 SolC2]=solve([eq1,eq2])
% -1/3 0
y1=subs(y,[C1 C2],[SolC1 SolC2])
% -(cos(3*x)*exp(x))/3

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)-2*diff(y,x)+10*y==0
dy(x)=diff(y)
cond=[y(pi/6)==0,dy(pi/6)==exp(sym(pi/6))]
ySol=simplify(dsolve(eqn,cond))
% -(cos(3*x)*exp(x))/3

% Checking
eqn10=diff(y,x,2)-2*diff(y,x)+10*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0