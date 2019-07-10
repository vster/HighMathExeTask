clear
digits(5)

% 3)
X=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7]
Y=[3.02 2.81 2.57 2.39 2.18 1.99 1.81 1.85]

syms x
phi2(x)=approxlin(X,Y)
Y2=phi2(X)

plot(X,Y,'o',X,Y2)
grid