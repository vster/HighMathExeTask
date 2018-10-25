clear
syms t x1(t) x2(t)
eqn1=diff(x1,t)-(4*x1-3*x2)
eqn2=diff(x2,t)-(3*x1+4*x2)
eqns=[eqn1,eqn2]
[x1Sol x2Sol]=dsolve(eqns)
%x1Sol =
% - C35*cos(3*t)*exp(4*t) - C34*sin(3*t)*exp(4*t)
%x2Sol =
% C34*cos(3*t)*exp(4*t) - C35*sin(3*t)*exp(4*t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2],[x1Sol x2Sol])) 
chk2=simplify(subs(eqn2,[x1 x2],[x1Sol x2Sol]))     
% 0 0