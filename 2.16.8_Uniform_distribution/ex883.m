syms a b x
f(x)=piecewise(x<a,0,a<=x<=b,1/(b-a),x>b,0)

f1(x)=subs(f(x),[a b],[0 5])
% piecewise(x < 0, 0, x in Dom::Interval([0], [5]), 1/5, 5 < x, 0)
P=int(f1,x,1,3)
% 2/5