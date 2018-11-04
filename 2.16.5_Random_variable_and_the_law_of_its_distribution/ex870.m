syms a x
f(x)=piecewise(x<0,0,0<=x<=pi,a*sin(x),x>pi,0)

F=int(f,x,0,pi)
% 2*a=1 => a=1/2

f2=subs(f,a,1/2)
% piecewise(x < 0, 0, x in Dom::Interval([0], [pi]), sin(x)/2, pi < x, 0)

F(x)=int(f2,x)
% piecewise(x < 0, 0, x in Dom::Interval([0], [pi]), -cos(x)/2, pi < x, 0)
F1=piecewise(x < 0, 0, 0<=x<=pi, (1-cos(x))/2, pi < x, 1)
fplot(F1)

F2=int(f2,x,0,pi)
% 1