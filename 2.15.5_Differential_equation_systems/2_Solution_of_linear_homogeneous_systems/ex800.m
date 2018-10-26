clear
syms t x1(t) x2(t)
eqn1=diff(x1,t)-(12*x1-5*x2)
eqn2=diff(x2,t)-(5*x1+12*x2)
eqns=[eqn1,eqn2]
[x1Sol x2Sol]=dsolve(eqns)
% - C20*cos(5*t)*exp(12*t) - C19*sin(5*t)*exp(12*t)
% C19*cos(5*t)*exp(12*t) - C20*sin(5*t)*exp(12*t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2],[x1Sol x2Sol])) 
chk2=simplify(subs(eqn2,[x1 x2],[x1Sol x2Sol]))     
% 0 0