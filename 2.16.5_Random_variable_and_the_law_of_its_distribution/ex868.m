syms x a
f(x)=piecewise(abs(x)<a,a/sqrt(a^2-x^2),abs(x)>=a,0)

% 1)
F=int(f,x,-a,a)
% piecewise(a == 0, 0, a ~= 0, pi*a)
% pi*a=1 => a=1/pi
f1=subs(f(x),a,1/sym(pi))

% 2)
pa=int(f,x,a/2,a)
% piecewise(a == 0, 0, a ~= 0, (pi*a)/3)
% 1/3

% 3)
fplot(f1)
grid



