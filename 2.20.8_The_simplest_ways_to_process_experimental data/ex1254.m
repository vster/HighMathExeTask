clear
digits(5)
T=[53.92 26.36 14.0 6.99 4.28 2.75 1.85]
S=[6.86 14.70 28.83 60.40 101.9 163.3 250.3]
% delta=A*t^alfa-S
% delta1=log(A)+alfa*log(T)-log(S)
syms A alfa lgA t
delta1=vpa(lgA+alfa*log10(T)-log10(S))
eq1=sum(delta1(1:4))
eq2=sum(delta1(5:7))
[alfa lgA]=solve([eq1,eq2])
% alfa =
% -1.0662
% lgA =
% 2.682
A=10^lgA
% A =
% 480.87
s(t)=A*t^alfa
% 480.87/t^1.0662
S2=s(T)
delta2=A*T.^alfa-S
% [ -0.0098452, -0.0083925, 0.014967, 0.089461, 0.14895, 0.24252, -0.73555]
plot(T,S,'o',T,S2)
grid