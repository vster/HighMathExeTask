syms x y z;
F=x^2+y^2-z^2+1
M=[2 2 3]

Dfx=diff(F,x)
Dfy=diff(F,y)
Dfz=diff(F,z)

DfxM=subs(Dfx,[x y z],M)
DfyM=subs(Dfy,[x y z],M)
DfzM=subs(Dfz,[x y z],M)

pn=DfxM*(x-M(1))+DfyM*(y-M(2))+DfyM*(z-M(3))

syms xn yn zn;
eq1=(xn-M(1))/DfxM
eq2=(yn-M(2))/DfyM
eq3=(zn-M(3))/DfzM

