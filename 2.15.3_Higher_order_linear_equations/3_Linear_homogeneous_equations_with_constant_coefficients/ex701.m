% Find the general solution of the equation
% y''''+a^4*y=0

% 1)
clear
syms k a
eq1=k^4+a^4
kSol=solve(eq1).'
% [ (-1)^(1/4)*a, -(-1)^(1/4)*a, -(-1)^(1/4)*a*1i, (-1)^(1/4)*a*1i]
% C1*exp((-1)^(1/4)*a*x)+C2*exp(-(-1)^(1/4)*a*x)+C3*exp(-(-1)^(1/4)*a*1i*x)+
%  C4*exp((-1)^(1/4)*a*1i*x)

% 2)
clear
syms x y(x) a
eqn=diff(y,x,4)+a^4*y==0
ySol=simplify(dsolve(eqn))
% C35*exp(x*(-a^4)^(1/4)) + C37*exp(-x*(-a^4)^(1/4)) + C36*exp(x*(-a^4)^(1/4)*1i) + C38*exp(-x*(-a^4)^(1/4)*1i)

% Checking
eqn10=diff(y,x,4)+a^4*y
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0
