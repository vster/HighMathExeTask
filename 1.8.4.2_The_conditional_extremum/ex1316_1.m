syms x y lam;
z=x^2-x*y+y^2-4*x
c=2*x+3*y-12

slv1=solve(c==0,x==0)
% y= 0..4
slv2=solve(c==0,y==0)
% x= 0..6

z1=subs(z,[x y],[0,0])
z2=subs(z,[x y],[6,0])
z3=subs(z,[x y],[0,4])

z_max=16
