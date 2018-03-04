syms x y z a b c;
A=[5,4,3]

f=x/a+y/b+z/c-1
f=x/a+y/a+z/a-1

fM=subs(f,[x y z],A)
sa=solve(fM)
% Уравнение плоскости
f=subs(f,a,sa)
f=f*12
