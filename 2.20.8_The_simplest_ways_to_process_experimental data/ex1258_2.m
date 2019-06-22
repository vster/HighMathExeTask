clear
digits(5)

% 2)
X=[1 4 9 16 25]
Y=[0.1 3 8.1 14.9 23.9]

syms x
phi2(x)=approxlin(X,Y)
Y2=phi2(X)

plot(X,Y)
hold on
plot(X,Y2)
grid on
hold off