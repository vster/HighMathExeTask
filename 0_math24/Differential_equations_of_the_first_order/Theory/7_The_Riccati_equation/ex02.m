% Solve the Riccati equation
% y'+y^2=2/x^2
 
% 1)
clear
% y'=2/x^2-y^2
syms x y(x)
eqn=diff(y(x))==2/x^2-y^2
ySol=dsolve(eqn)
%                        2/x
% 3/(x*(3*C8*x^3 - 1)) + 2/x

% Checking
for i=1:2
eqn10=diff(y(x))-2/x^2+y^2
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
disp(chk)
% [ 0, 0]

% 2)
% y'+y^2=2/x^2
syms x y c dy
y1=c/x
dy1=diff(y1,x)
% -c/x^2
eq1=dy+y^2-2/x^2
eq2=subs(eq1,[y dy],[y1 dy1])
% c^2/x^2 - 2/x^2 - c/x^2
% c^2-c-2=0
eq2=c^2-c-2
cSol=solve(eq2)'
% [ -1, 2]
% y=z+2/x => y'=z'-2/x^2
syms z(x) y2(x)
y2=z+2/x
% z(x) + 2/x
dy2=diff(y2)
% diff(z(x), x) - 2/x^2
eq3=subs(eq1,[y dy],[y2 dy2])
eq3=simplify(eq3)
% Continued...