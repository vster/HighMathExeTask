clear
syms t x1(t) x2(t) x3(t)
eqn1=diff(x1,t)-(x1-x3)
eqn2=diff(x2,t)-x1
eqn3=diff(x3,t)-(x1-x2)
eqns=[eqn1,eqn2,eqn3]
[x1Sol x2Sol x3Sol]=dsolve(eqns)
%x1Sol =
% C4*exp(t) - C5*(cos(t)/2 + sin(t)/2) + C6*(cos(t)/2 - sin(t)/2)
%x2Sol =
% C4*exp(t) + C5*(cos(t)/2 - sin(t)/2) + C6*(cos(t)/2 + sin(t)/2)
%x3Sol =
% C6*cos(t) - C5*sin(t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2 x3],[x1Sol x2Sol x3Sol])) 
chk2=simplify(subs(eqn2,[x1 x2 x3],[x1Sol x2Sol x3Sol]))
chk3=simplify(subs(eqn3,[x1 x2 x3],[x1Sol x2Sol x3Sol])) 
% 0 0 0