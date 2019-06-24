clear
digits(5)
% S=A*exp(c*t)
T=[1 3 5 7 9 11]
S=[0.75 1.81 5.34 10.86 24.52 59.0]

syms t
phi(t)=approxexp(T,S)
% 0.51616*exp(0.43364*t)
S2=phi(T)
% [ 0.79636, 1.8957, 4.5125, 10.742, 25.57, 60.867]
D=S-S2
% [ -0.046361, -0.085679, 0.82748, 0.11827, -1.0499, -1.8672]

plot(T,S)
hold on
plot(T,S2)
grid
hold off