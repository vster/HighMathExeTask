clear
syms t x1(t) x2(t)
eqn1=diff(x1,t)-(5*x1+2*x2)
eqn2=diff(x2,t)-(-4*x1+x2)
eqns=[eqn1,eqn2]
[x1Sol x2Sol]=dsolve(eqns)
%x1Sol =
% C25*((cos(2*t)*exp(3*t))/2 + (sin(2*t)*exp(3*t))/2) - C24*((cos(2*t)*exp(3*t))/2 - (sin(2*t)*exp(3*t))/2)
%x2Sol =
% C24*cos(2*t)*exp(3*t) - C25*sin(2*t)*exp(3*t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2],[x1Sol x2Sol])) 
chk2=simplify(subs(eqn2,[x1 x2],[x1Sol x2Sol]))
% 0 0