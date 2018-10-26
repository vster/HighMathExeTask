clear
syms t x1(t) x2(t) x3(t)
eqn1=diff(x1,t)-(-x1+x2+x3)
eqn2=diff(x2,t)-(x1-x2+x3)
eqn3=diff(x3,t)-(x1+x2+x3)
eqns=[eqn1,eqn2,eqn3]
[x1Sol x2Sol x3Sol]=dsolve(eqns)
%x1Sol =
% (C15*exp(2*t))/2 - C14*exp(-t) - C13*exp(-2*t)
%x2Sol =
% C13*exp(-2*t) - C14*exp(-t) + (C15*exp(2*t))/2
%x3Sol =
% C14*exp(-t) + C15*exp(2*t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2 x3],[x1Sol x2Sol x3Sol])) 
chk2=simplify(subs(eqn2,[x1 x2 x3],[x1Sol x2Sol x3Sol]))
chk3=simplify(subs(eqn3,[x1 x2 x3],[x1Sol x2Sol x3Sol])) 
% 0 0 0