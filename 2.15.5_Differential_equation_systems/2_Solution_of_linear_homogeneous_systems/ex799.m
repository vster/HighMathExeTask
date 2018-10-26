clear
syms t x1(t) x2(t) x3(t)
eqn1=diff(x1,t)-(x1-x2+x3)
eqn2=diff(x2,t)-(x1+x2-x3)
eqn3=diff(x3,t)-(2*x1-x2)
eqns=[eqn1,eqn2,eqn3]
[x1Sol x2Sol x3Sol]=dsolve(eqns)
% C18*exp(t) - (C16*exp(-t))/5 + C17*exp(2*t)
% C18*exp(t) + (3*C16*exp(-t))/5
% C18*exp(t) + C16*exp(-t) + C17*exp(2*t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2 x3],[x1Sol x2Sol x3Sol])) 
chk2=simplify(subs(eqn2,[x1 x2 x3],[x1Sol x2Sol x3Sol]))
chk3=simplify(subs(eqn3,[x1 x2 x3],[x1Sol x2Sol x3Sol])) 
% 0 0 0