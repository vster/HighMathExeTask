% Write the equation of the plane passing through 
% the intersection line of the planes 
% (1+sqrt(sym(2)))*x+2*y+2*z-4=0
% x+y+z+1=0
% and make with the coordinate plane x0y 
% the angle of 60 degrees.

syms x y z lam real;
f1=(1+sqrt(sym(2)))*x+2*y+2*z-4
f2=x+y+z+1

f3=f1+lam*f2
f3=expand(f3)
% lam + x + 2*y + 2*z + 2^(1/2)*x + lam*x + lam*y + lam*z - 4
N1=[1+sqrt(sym(2))+lam,2+lam,2+lam]
N2=[0,0,1]

cos_phi=dot(N1,N2)/(norm(N1)*norm(N2))
% (lam + 2)/(2*abs(lam + 2)^2 + abs(lam + 2^(1/2) + 1)^2)^(1/2)
slam=solve(cos_phi==1/2)
% -1

f3=subs(f3,lam,slam)
% y + z + 2^(1/2)*x - 5 = 0
f3=simplify(f3)
% y + z + 2^(1/2)*x - 5 = 0
