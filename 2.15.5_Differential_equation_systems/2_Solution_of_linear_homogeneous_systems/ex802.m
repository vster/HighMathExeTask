clear
syms t x1(t) x2(t) x3(t)
eqn1=diff(x1,t)-(-15*x1-6*x2+16*x3)
eqn2=diff(x2,t)-(-15*x1-7*x2+18*x3)
eqn3=diff(x3,t)-(-19*x1-8*x2+21*x3)
eqns=[eqn1,eqn2,eqn3]
[x1Sol x2Sol x3Sol]=dsolve(eqns)
% C25*((3*cos(t))/5 - sin(t)/5) - C23*(cos(t)/5 + (3*sin(t))/5) + 2*C24*exp(-t)
% C23*((3*cos(t))/5 - (6*sin(t))/5) + C25*((6*cos(t))/5 + (3*sin(t))/5) - 2*C24*exp(-t)
% C25*cos(t) - C23*sin(t) + C24*exp(-t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2 x3],[x1Sol x2Sol x3Sol])) 
chk2=simplify(subs(eqn2,[x1 x2 x3],[x1Sol x2Sol x3Sol]))
chk3=simplify(subs(eqn3,[x1 x2 x3],[x1Sol x2Sol x3Sol])) 
% 0 0 0