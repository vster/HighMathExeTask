syms a b x
f(x)=piecewise(x<a,0,a<=x<=b,1/(b-a),x>b,0)

f1(x)=subs(f(x),[a b],[2 8])
% piecewise(x < 2, 0, x in Dom::Interval([2], [8]), 1/6, 8 < x, 0)
P=int(f1,x,3,5)
% 1/3