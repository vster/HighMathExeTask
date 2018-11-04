syms a x
f(x)=piecewise(x<2,0,2<=x<=4,a*(x-2)*(4-x),x>4,0)

F1=int(f(x),x,-inf,inf)
% (4*a)/3
a1=solve(F1==1)
% 3/4
f1(x)=subs(f(x),a,a1)

df1(x)=diff(f1,x)
% piecewise(x < 2, 0, x in Dom::Interval(2, 4), 9/2 - (3*x)/2, 4 < x, 0)
d2f1(x)=simplify(diff(f1,x,2))
% piecewise(x < 2, 0, x in Dom::Interval(2, 4), -3/2, 4 < x, 0)

M=solve(9/2 - (3*x)/2)
% 3

syms mu
assume(2<mu<4)
P2=int(f1,x,0,mu)
% -((mu - 2)^2*(mu - 5))/4
mu1=solve(P2==0.5)
% 3