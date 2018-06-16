% On the plane 2*x-5*y+2*z+5=0 find the point M so that 
% the straight line OM equals the angles with the coordinate axes.

syms x y z a;
f=2*x-5*y+2*z+5

M=[a a a]

f=subs(f,[x y z],M)
% a=5
% M=[5,5,5]
