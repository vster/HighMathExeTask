clear
syms x a
f(x)=piecewise(x<0,0,0<=x<=3,a*(3*x-x^2),x>3,0)

%1)
P=int(f(x),x,0,3)
% (9*a)/2=1 => a=2/9

% 2)
f1=subs(f,a,2/9)
fplot(f1)
grid

% 3)
P12=int(f1,x,1,2)
% 13/27