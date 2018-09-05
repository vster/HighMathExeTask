% dT/dt=k*(T-T0)
% dT/(T-T0)=k*dt

clear
syms T T0 k t;
digits(5)
eq1=int(1/(T-T0),T)-k*int(1,t)
% log(T - T0) - k*t + log(C)
syms C;
eq2=log(T - T0) - k*t + log(C)
eq3=subs(eq2,[T T0 t],[100 20 0])
% log(80) + log(C) => C=80
C1=80
eq4=subs(eq2,[T T0 t C],[60 20 20 80])
% log(40) - 20*k + log(80) = 0 => k =-1/20*log(2)
k1=-1/20*log(2)
eq5=exp(eq2)
eq5=simplify(eq5)
% C*exp(-k*t)*(T - T0) = 1 => T=T0+C*exp(-k*t)
t=(log(T-T0)-log(C))/k
t1=subs(t,[T T0 C k],[30 20 C1 k1])
vpa(t1)
% 60.0