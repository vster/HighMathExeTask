syms x y z;
u=tan(x)-x+3*sin(y)-sin(y)^3+z+cot(z);
M=[pi/4 pi/3 pi/2]

dux=diff(u,x)
duy=diff(u,y)
duz=diff(u,z)

Gdu=[diff(u,x);diff(u,y);diff(u,z)]

GduM=subs(Gdu,[x,y,z],M)
lgm=sqrt(sum(GduM.*GduM))

Cos_A=simplify(GduM/lgm)

Gdu2=gradient(u)
Gdu2M=subs(Gdu2,[x y z], M)
