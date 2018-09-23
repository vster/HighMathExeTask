% y*sqrt(1-y^2)*dx+(x*sqrt(1-y^2)+y)*dy=0 (mu=phi(y))

% 1)
clear
% y'=-y*sqrt(1-y^2)/(x*sqrt(1-y^2)+y)
syms x y(x)
eqn=diff(y(x))==-y*sqrt(1-y^2)/(x*sqrt(1-y^2)+y)
ySol=dsolve(eqn)
%                                            1
%                                            0
%                                           -1
% -(C5*x + (- C5^2 + x^2 + 1)^(1/2))/(x^2 + 1)
% -(C5*x - (- C5^2 + x^2 + 1)^(1/2))/(x^2 + 1)

% 2)
clear
% x'=-(x*sqrt(1-y^2)+y)/(y*sqrt(1-y^2))
syms y x(y)
eqn=diff(x(y))==-(x*sqrt(1-y^2)+y)/(y*sqrt(1-y^2))
xSol=dsolve(eqn)
% x=(1 - y^2)^(1/2)/y + C6/y
% xy=(1 - y^2)^(1/2) + C6

% 3)
syms x y
P(x,y)=y*sqrt(1-y^2)
Q(x,y)=x*sqrt(1-y^2)+y
dPy=diff(P,y)
% (1 - y^2)^(1/2) - y^2/(1 - y^2)^(1/2)
dQx=diff(Q,x)
% (1 - y^2)^(1/2)
% dPy/=dQx

eq1=(dPy-dQx)/P
% y/(y^2 - 1)
mu=exp(-int(eq1,y))
% 1/(y^2 - 1)^(1/2)
P1(x,y)=simplify(P(x,y)*mu)
% (y*(1 - y^2)^(1/2))/(y^2 - 1)^(1/2)
Q1(x,y)=simplify(Q(x,y)*mu)
% (y + x*(1 - y^2)^(1/2))/(y^2 - 1)^(1/2)
dP1y=simplify(diff(P1,y))
% -(y^2 - 1)^(1/2)/(1 - y^2)^(1/2)
dQ1x=simplify(diff(Q1,x))
% (1 - y^2)^(1/2)/(y^2 - 1)^(1/2)
eq2=simplify(dP1y-dQ1x)
% 0

syms C(y)
U=int(P1,x)+C(y)
% C(y) + (x*y*(1 - y^2)^(1/2))/(y^2 - 1)^(1/2)
dUy=simplify(diff(U,y))
% 
dCy=simplify(dUy-Q1)
% -(y - (y^2 - 1)^(1/2)*diff(C(y), y))/(y^2 - 1)^(1/2)
dCy=y/sqrt(y^2-1)
C(y)=int(dCy,y)
% (y^2 - 1)^(1/2)
% (x*y*(1 - y^2)^(1/2))/(y^2 - 1)^(1/2)+(y^2 - 1)^(1/2)
% x*y+(y^2 - 1)^(1/2)=C1