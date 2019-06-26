clear
digits(4)
syms x
f(x)=log(4+x)
a=0
b=1
syms a0 a1 a2 a3
phi(x)=a0*x^3+a1*x^2+a2*x+a3
eq1=int((phi(x)-f(x))*x^3,x,a,b)
eq2=int((phi(x)-f(x))*x^2,x,a,b)
eq3=int((phi(x)-f(x))*x,x,a,b)
eq4=int((phi(x)-f(x)),x,a,b)
[a01 a11 a21 a31]=solve([eq1 eq2 eq3 eq4],[a0 a1 a2 a3])
a01=vpa(a01)
a11=vpa(a11)
a21=vpa(a21)
a31=vpa(a31)
phi(x)=subs(phi(x),[a0 a1 a2 a3],[a01 a11 a21 a31])
% 0.003689*x^3 - 0.03036*x^2 + 0.2498*x + 1.386

X=0:0.1:1
Y1=vpa(f(X))
% [ 1.386, 1.411, 1.435, 1.459, 1.482, 1.504, 1.526, 1.548, 1.569, 1.589, 1.609]
Y2=phi(X)
% [ 1.386, 1.411, 1.435, 1.459, 1.482, 1.504, 1.526, 1.548, 1.569, 1.589, 1.609]
D=Y1-Y2
% [ -9.28e-6, 2.177e-6, 3.548e-6, 7.09e-7, -2.399e-6, -3.592e-6, -2.289e-6, 6.243e-7, 2.92e-6, 1.14e-6, -9.306e-6]

phi2(x)=interpol(f,a,b)
% 0.003689*x^3 - 0.03036*x^2 + 0.2498*x + 1.386

fplot(f(x),[a b])
hold on
fplot(phi(x),[a b])
grid on
hold off
