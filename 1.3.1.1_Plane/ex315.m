% Which angle forms with the plane x+y+2*z-4=0 vector
% a=i+2j+k

syms x y z;
f1=x+y+2*z-4
a=[1,2,1]

N1=[1,1,2]

sin_phi=sym(dot(N1,a)/(norm(N1)*norm(a)))
% 5/6
phi=asin(sin_phi)
% asin(5/6)