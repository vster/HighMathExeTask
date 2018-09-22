% y*dx-(x+y^2)*dy=0 (mu=phi(y))

clear
% 1)
% y'=y/(x+y^2)
syms x y(x)
eqn=diff(y(x))==y/(x+y^2)
ySol=dsolve(eqn)
%                                                                 0
%                                                           x^(1/2)
%                                                          -x^(1/2)
% x^(1/2)*(exp(C5 - log(x)/2)/2 + (exp(2*C5 - log(x)) + 4)^(1/2)/2)
% x^(1/2)*(exp(C5 - log(x)/2)/2 - (exp(2*C5 - log(x)) + 4)^(1/2)/2)

clear
% 2)
% x'=(x+y^2)/y
syms y x(y)
eqn=diff(x(y))==(x+y^2)/y
xSol=dsolve(eqn)
% y^2 + C7*y

% 3)
syms x y
P(x,y)=y
Q(x,y)=-(x+y^2)
dPy=diff(P,y)
% 1
dQx=diff(Q,x)
% -1
% dPy/=dQx

eq1=(dPy-dQx)/P
% 2/y
mu=exp(-int(eq1,y))
% 1/y^2
P1(x,y)=P(x,y)*mu
% 1/y
Q1(x,y)=Q(x,y)*mu
% -(y^2 + x)/y^2
dP1y=diff(P1,y)
% -1/y^2
dQ1x=diff(Q1,x)
% -1/y^2
% dP1y==dQ1x

syms C(y)
U=int(P1,x)+C(y)
% C(y) + x/y
dUy=simplify(diff(U,y))
% diff(C(y), y) - x/y^2
dCy=simplify(dUy-Q1)
% diff(C(y), y) + 1
dCy=-1
C(y)=int(-1,y)
% -y
% -y+x/y=C1
% -y^2+x=C1*y
% x=y^2+C1*y