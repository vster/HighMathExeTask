clear
syms t x1(t) x2(t)
eqn1=diff(x1,t)-(2*x1+3*x2)
eqn2=diff(x2,t)-(4*x1-2*x2)
eqns=[eqn1,eqn2]
[x1Sol x2Sol]=dsolve(eqns)
%x1Sol =
% (3*C21*exp(4*t))/2 - (C20*exp(-4*t))/2
%x2Sol =
% C20*exp(-4*t) + C21*exp(4*t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2],[x1Sol x2Sol])) 
chk2=simplify(subs(eqn2,[x1 x2],[x1Sol x2Sol]))
% 0 0