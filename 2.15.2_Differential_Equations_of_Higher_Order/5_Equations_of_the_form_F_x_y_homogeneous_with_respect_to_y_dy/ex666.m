% Solve equation
% 3*y'^2=4*y*y''+y^2

% 1)
clear
syms x y(x)
eqn=3*diff(y,x)^2==4*y*diff(y,x,2)+y^2
ySol=simplify(dsolve(eqn))
%  C12*exp(x*1i)
% C11*exp(-x*1i)

% Checking
eqn10=3*diff(y,x)^2-(4*y*diff(y,x,2)+y^2)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0]

% 2)
% 3*y'^2=4*y*y''+y^2
% 3*(y'/y)^2-4*y''/y=1
% Put y'/y=z => y''/y-y'^2/y^2=z'
% y''/y=z'+z^2
% 3*z^2-4*z'-4^z^2)=1 => -4*z'=1+z^2
% dz/(1+z^2)=-1/4*dx
clear
syms x z
eq1=int(1/(1+z^2),z)+x/4
% x/4 + atan(z)=C
% z==y'/y=tan(C-x/4)
% y'=y*tan(C-x/4)
syms x y(x) C
eqn2=diff(y)==y*tan(C-x/4)
ySol=dsolve(eqn2)
% C27*cos(C - x/4)^4

% Checking 2
eqn10=3*diff(y,x)^2-(4*y*diff(y,x,2)+y^2)
for i=1:length(ySol)
    chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% 0