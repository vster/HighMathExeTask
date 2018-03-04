syms x y z;
f=2*x+3*y-6*z+21
N=[2,3,-6]

Nn=norm(N)
% Нормирующий множитель mu
mu=-1/Nn

f=f*mu
pretty(f)