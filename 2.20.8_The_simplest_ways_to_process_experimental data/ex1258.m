clear
digits(5)
syms x

% 1)
X=1:6
Y=[2 4.9 7.9 11.1 14.1 17]
phi(x)=approxlin(X,Y)
% 3.0229*x - 1.08
Y2=phi(X)
% [ 1.9429, 4.9657, 7.9886, 11.011, 14.034, 17.057]
D=Y-Y2

% 2)
X=[1 4 9 16 25]
Y=[0.1 3 8.1 14.9 23.9]
phi(x)=approxlin(X,Y)
% 0.99171*x - 0.90882
Y2=phi(X)
% [ 0.082888, 3.058, 8.0166, 14.959, 23.884]
D=Y-Y2

% 3)
X=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7]
Y=[3.02 2.81 2.57 2.39 2.18 1.99 1.81 1.85]
phi(x)=approxlin(X,Y)
% 2.9583 - 1.8024*x
Y2=phi(X)
% [ 2.9583, 2.7781, 2.5979, 2.4176, 2.2374, 2.0571, 1.8769, 1.6967]
D=Y-Y2