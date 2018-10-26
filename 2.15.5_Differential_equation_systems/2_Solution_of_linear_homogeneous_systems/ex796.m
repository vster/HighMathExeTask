clear
syms t x1(t) x2(t) a
eqn1=diff(x1,t)+5*a*x2
eqn2=diff(x2,t)+5*a*x1
eqns=[eqn1,eqn2]
[x1Sol x2Sol]=dsolve(eqns)
%x1Sol =
% C9*exp(-5*a*t) - C10*exp(5*a*t)
%x2Sol =
% C9*exp(-5*a*t) + C10*exp(5*a*t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2],[x1Sol x2Sol])) 
chk2=simplify(subs(eqn2,[x1 x2],[x1Sol x2Sol]))     
% 0 0