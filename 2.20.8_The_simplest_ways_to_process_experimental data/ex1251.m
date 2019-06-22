clear
digits(4)
T=1:8
S=[15.3 20.5 27.4 36.6 49.1 65.6 87.8 117.6]
X=T
Y=log(S)
syms a0 a1 y x t
eq=y-(a0+a1*x)
eq1=vpa(subs(eq,[x y],[X(1) Y(1)]))
% 2.728 - 1.0*a1 - 1.0*a0
eq2=vpa(subs(eq,[x y],[X(8) Y(8)]))
% 4.767 - 8.0*a1 - 1.0*a0
[a0 a1]=solve([eq1 eq2],[a0 a1])
% 2.437 0.2913
A=exp(a0)
% 11.43
alfa=a1
% 0.2913
S1=A*exp(alfa*t)
% 11.43*exp(0.2913*t)
D=A*exp(alfa*T)-S
% [ 0.0007217, -0.02422, 0.00117, 0.06888, -0.02884, 0.06817, 0.07867, 0.001289]
SD=vpa(sum(D))
% 0.1658
SD2=vpa(sum(D.^2))
% 0.017