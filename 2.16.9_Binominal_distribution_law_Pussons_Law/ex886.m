a1=5000*0.004
% 20
m1=5
syms m a
P(m)=(a^m/factorial(m))*exp(-a)
P5=subs(P,[a m],[a1 m1])
digits(3)
P5=vpa(P5)
% 5.5e-5