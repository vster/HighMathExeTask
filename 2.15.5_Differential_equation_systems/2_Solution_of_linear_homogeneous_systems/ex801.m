clear
syms t x1(t) x2(t)
eqn1=diff(x1,t)-(x1-2*x2)
eqn2=diff(x2,t)-(x1-x2)
eqns=[eqn1,eqn2]
[x1Sol x2Sol]=dsolve(eqns)
% C22*(cos(t) - sin(t)) - C21*(cos(t) + sin(t))
% C22*cos(t) - C21*sin(t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2],[x1Sol x2Sol])) 
chk2=simplify(subs(eqn2,[x1 x2],[x1Sol x2Sol]))     
% 0 0