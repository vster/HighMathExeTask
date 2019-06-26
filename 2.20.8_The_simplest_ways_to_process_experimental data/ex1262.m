clear
digits(3)
syms x
f(x)=sin(pi*x/2)
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
% - 0.441*x^3 - 0.173*x^2 + 1.61*x - 0.00226

X=0:0.1:1
Y1=vpa(f(X))
% [ 0, 0.156, 0.309, 0.454, 0.588, 0.707, 0.809, 0.891, 0.951, 0.988, 1.0]
Y2=phi(X)
% [ -0.00226, 0.157, 0.31, 0.454, 0.587, 0.706, 0.808, 0.891, 0.952, 0.988, 0.997]
D=Y1-Y2
% [ 0.00226, -4.87e-4, -9.86e-4, -3.45e-4, 5.12e-4, 9.39e-4, 6.47e-4, -2.27e-4, -0.00105, -6.61e-4, 0.00269]

phi2(x)=interpol(f,a,b)
% - 0.441*x^3 - 0.173*x^2 + 1.61*x - 0.00226

plot(X,Y1)
hold on
plot(X,Y2)
grid on
hold off
