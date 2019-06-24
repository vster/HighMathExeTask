clear
digits(5)
X=[0.78 1.56 2.34 3.12 3.81]
Y=[2.50 1.20 1.12 2.25 4.28]

syms x
phi(x)=approxsqr(X,Y)
% 1.0033*x^2 - 4.0188*x + 5.0263
Y2=phi(X)
% [ 2.5021, 1.1987, 1.1161, 2.2543, 4.2789]
D=Y-Y2
% [ -0.0020773, 0.0013457, 0.0039336, -0.0043137, 0.0011117]

plot(X,Y)
hold on
plot(X,Y2)
grid on
hold off