% (tan(y)-y/sin(x)^2)*dx+(1/tan(x)+x/cos(y)^2)*dy

clear
% 1)
% y'=-(tan(y)-y/sin(x)^2)/(1/tan(x)+x/cos(y)^2)
% syms x y(x)
% eqn=diff(y(x))==-(tan(y)-y/sin(x)^2)/(1/tan(x)+x/cos(y)^2)
% ySol=dsolve(eqn)
% [ empty sym ]

% 2)
syms x y
P(x,y)=tan(y)-y/sin(x)^2
Q(x,y)=1/tan(x)+x/cos(y)^2
dPy=diff(P,y)
% tan(y)^2 - 1/sin(x)^2 + 1
dQx=diff(Q,x)
% 1/cos(y)^2 - (tan(x)^2 + 1)/tan(x)^2
eq1= simplify(dPy-dQx)
% 0

% U(x,y)
% dUx=P, dUy=Q
syms C(y)
U=int(P(x,y),x)+C(y)
% C(y) + y/tan(x) + x*tan(y)
dUy=diff(U,y)
% 1/tan(x) + x*(tan(y)^2 + 1) + diff(C(y), y)
dCy=simplify(dUy-Q)
% diff(C(y), y) = 0
% C(y)=C1
% y/tan(x) + x*tan(y) + C1 = 0