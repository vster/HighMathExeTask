syms x y z;
f1=x+y+2*z-4
a=[1,2,1]

N1=[1,1,2]

sin_phi=dot(N1,a)/(norm(N1)*norm(a))
phi=asin(sin_phi)