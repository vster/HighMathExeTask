syms x y z;
f1=x+y-z-2

N=[1,1,-1]
Nn=norm(N)
% Нормирующий множитель mu
mu=-1/Nn

f1=expand(f1*mu)
pretty(f1)

f2=3*x+5*y-4*z+7

N=[3,5,-4]
Nn=norm(N)
% Нормирующий множитель mu
mu=-1/Nn

f2=expand(f2*mu)
pretty(f2)
