% Prove
% div(f*A) = f*div(A)+A*grad(f)

syms x y z f(x,y,z) a1 a2 a3;
r=[x y z]
A=[a1 a2 a3]

P1=divergence(f*A,r)
% a1*D([1], f)(x, y, z) + a2*D([2], f)(x, y, z) + a3*D([3], f)(x, y, z)
P2=f*divergence(A,r)+A*gradient(f)
% a1*D([1], f)(x, y, z) + a2*D([2], f)(x, y, z) + a3*D([3], f)(x, y, z)
% P1==P2