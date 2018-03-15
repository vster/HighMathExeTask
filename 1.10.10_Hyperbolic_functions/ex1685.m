syms x;

eq=sinh(x*i)-i*sin(x)
eq=subs(eq,x,x*i)
eq=i*eq
% sin(x*i)=i*sinh(x)

eq=cosh(x*i)-cos(x)
eq=subs(eq,x,x*i)
% cos(x*i)=cosh(x)
