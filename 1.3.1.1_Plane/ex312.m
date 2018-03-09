syms x y z;
f1=2*x-y-12*z-3
f2=3*x+y-7*z-2
f4=x+2*y+5*z-1

f3=expand(f1+lam*f2)

N1=[2+3*lam,-1+lam,-12-7*lam]
N2=[1,2,5]

cos_phi=dot(N1,N2)/(norm(N1)*norm(N2))
slam=solve(cos_phi==0)
f3=subs(f3,lam,slam)
f3=-f3
% 4*x + 3*y - 2*z - 1



