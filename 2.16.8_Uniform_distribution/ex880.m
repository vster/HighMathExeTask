syms a b h x
assume(a<b)
f(x)=piecewise(x<a,0,a<=x<=b,h,x>b,0)

F1=int(f(x),x,a,b)
h1=solve(F1==1)
f(x)=subs(f(x),h,h1)
% piecewise(x < a, 0, a <= x & x <= b, -1/(a - b), b < x, 0)

MX=int(x*f(x),x,a,b)
% a/2 + b/2
