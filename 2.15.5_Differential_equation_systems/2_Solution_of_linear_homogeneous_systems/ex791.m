clear
syms t x1(t) x2(t)
eqn1=diff(x1,t)-(7*x1+3*x2)
eqn2=diff(x2,t)-(6*x1+4*x2)
eqns=[eqn1,eqn2]
[x1Sol x2Sol]=dsolve(eqns)
% C30*exp(10*t) - (C29*exp(t))/2
% C29*exp(t) + C30*exp(10*t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2],[x1Sol x2Sol])) 
chk2=simplify(subs(eqn2,[x1 x2],[x1Sol x2Sol]))     
% 0 0