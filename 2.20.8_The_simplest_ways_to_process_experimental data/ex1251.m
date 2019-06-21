clear
digits(4)
T=1:8
S=[15.3 20.5 27.4 36.6 49.1 65.6 87.8 117.6]
X=log(T)
Y=log(S)
syms a0 a1 y x t
eq=y-(a0+a1*x)
eq1=vpa(subs(eq,[x y],[X(1) Y(1)]))
% 2.728 - 1.0*a0
eq2=vpa(subs(eq,[x y],[X(8) Y(8)]))
% 4.767 - 2.079*a1 - 1.0*a0
[a0 a1]=solve([eq1 eq2],[a0 a1])
% 2.728 0.9808
A=exp(a0)
% 15.3
alfa=a1
% 0.9808
S1=A*t^alfa
% 15.3*t^0.9808
D=A*T.^alfa-S
% [ 0.0007217, 9.696, 17.54, 22.99, 25.07, 23.09, 15.37, 0.006081]
SD=vpa(sum(D))
% 113.8
SD2=vpa(sum(D.^2))
% 2329.0