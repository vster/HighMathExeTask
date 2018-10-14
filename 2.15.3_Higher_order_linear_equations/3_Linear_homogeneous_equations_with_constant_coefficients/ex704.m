% Find a solution to the equation 
% y''-10y'+25y=0
% satisfying the initial conditions 
% y(0)=0,y'(0)=1.

% 1)
clear
syms k
eqn=k^2-10*k+25
kSol=solve(eqn).'
% [ 5, 5]
syms x C1 C2
y=exp(5*x)*(C1+C2*x)
dy=simplify(diff(y))
% exp(5*x)*(5*C1 + C2 + 5*C2*x)

eq1=subs(y,x,0)
% C1=0
eq2=subs(dy,x,0)-1
% 5*C1 + C2 - 1=0

[SolC1 SolC2]=solve([eq1,eq2])
% 0 1
y1=subs(y,[C1 C2],[SolC1 SolC2])
% y=x*exp(5*x)

% 2)
clear
syms x y(x)
eqn=diff(y,x,2)-10*diff(y,x)+25*y==0
dy(x)=diff(y)
cond=[y(0)==0,dy(0)==1]
ySol=simplify(dsolve(eqn,cond))
% x*exp(5*x)

% Checking
eqn10=diff(y,x,2)-10*diff(y,x)+25*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0