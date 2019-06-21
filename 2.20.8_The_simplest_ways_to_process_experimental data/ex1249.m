clear
digits(4)
T=1:7
S=[2.31 2.58 2.77 2.93 3.06 3.16 3.26]
X=log(T)
Y=log(S)
syms a0 a1 y x t
eq=y-(a0+a1*x)
eq1=vpa(subs(eq,[x y],[X(1) Y(1)]))
% 0.8372 - 1.0*a0
eq2=vpa(subs(eq,[x y],[X(7) Y(7)]))
% 1.182 - 1.946*a1 - 1.0*a0
[a0 a1]=solve([eq1 eq2],[a0 a1])
% 0.8373 0.177
A=exp(a0)
% 2.31
alfa=a1
% 0.177
S1=A*t^alfa
% 2.31*t^0.177
D=A*T.^alfa-S
% [ 5.718e-6, 0.03156, 0.03588, 0.02247, 0.01143, 0.01217, -8.28e-5]
SD=vpa(sum(D))
% 0.1134
SD2=vpa(sum(D.^2))
% 0.003067