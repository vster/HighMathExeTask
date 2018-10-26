clear
syms t x1(t) x2(t)
eqn1=diff(x1,t)-(8*x2-x1)
eqn2=diff(x2,t)-(x1+x2)
eqns=[eqn1,eqn2]
[x1Sol x2Sol]=dsolve(eqns)
%x1Sol =
% 2*C11*exp(3*t) - 4*C12*exp(-3*t)
%x2Sol =
% C11*exp(3*t) + C12*exp(-3*t)

% Checking
chk1=simplify(subs(eqn1,[x1 x2],[x1Sol x2Sol])) 
chk2=simplify(subs(eqn2,[x1 x2],[x1Sol x2Sol]))     
% 0 0