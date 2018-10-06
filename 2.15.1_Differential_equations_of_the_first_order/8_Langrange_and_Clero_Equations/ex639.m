% Solve equation
% x=y/y'+1/y'^2

% 1)
% Put y'=p
% x=y/p+1/p^2
% y=p*x-1/p
% dy=p*dx+x*dp+dp/p^2 = p*dx
% (x+1/p^2)*dp=0

% dp=0 => p=C
% y=C*x-1/C - common decision

% Special decision
% / x=-1/p^2
% \ y=p*(-1/p^2)-1/p=-2/p
% p=-2/y => y^2=-4*x

% 2)
clear
syms x y(x) a b
assume(y(x),'real')
eqn=x==y/diff(y)+1/diff(y)^2
ySol=simplify(dsolve(eqn))
%    C27*x - 1/C27
%  2/(-1/x)^(1/2)
% -2/(-1/x)^(1/2)

% Checking
eqn10=x-(y/diff(y)+1/diff(y)^2)
for i=1:3
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
% [ 0, 0, 0]