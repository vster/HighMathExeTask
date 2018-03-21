syms t t1 t2 a;
x=a*cosh(t);
y=a*sinh(t);

M=[a*cosh(t1),a*sinh(t1)]
N=[a*cosh(t2),a*sinh(t2)]

S_M=1/2*M(1)*M(2)
S_N=1/2*N(1)*N(2)

dx=diff(x)
S_MN=int(y*dx,t1,t2)

S=S_N-S_M-S_MN
S=simplify(S)
% (a^2*(t2 - t1))/2

