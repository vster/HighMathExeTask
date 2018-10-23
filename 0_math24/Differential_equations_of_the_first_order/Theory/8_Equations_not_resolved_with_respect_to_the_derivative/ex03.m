% Solve equation
% 2*y=2*x^2+4*x*y'+(y')^2

% 1)
clear
syms x y(x)
eqn=2*y==2*x^2+4*x*diff(y(x))+diff(y(x))^2
ySol=dsolve(eqn)
%                    -x^2
% C12^2/2 + C12*x - x^2/2

% Checking
for i=1:2
eqn10=2*y-(2*x^2+4*x*diff(y(x))+diff(y(x))^2)
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]

% 2)
% Put y'=p, then
% 2*y=2*x^2+4*x*p+p^2

syms x y p;
y1=x^2+2*x*p+p^2/2
% dy1=2*x*dx+2*x*dp+2*p*dx+p*dp = p*dx
% 2*x*dx+2*x*dp+p*dx+p*dp = 0
% (2*x+p)*(dx+dp)=0

% 2*x+p=0 => 2*x+y'=0 => y'=-2*x
% y1=-x^2+C

syms C
% dx+dp=0
% x=-p+C
y2=simplify(subs(y1,x,-p+C))
% C^2 - p^2/2

% / x=-p+C
% \ y=C^2 - p^2/2

y3=subs(y2,p,C-x)
% y=C^2 - (C - x)^2/2, y=-x^2