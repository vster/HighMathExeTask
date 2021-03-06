clear
digits(4)
X=[19.1 25.0 30.1 36.0 40.0 45.1 50.0]
Y=[76.30 77.80 79.75 80.80 82.35 83.90 85.10]
syms a0 a1 x y
eq=y-(a0+a1*x)
eq1=vpa(subs(eq,[x y],[X(1) Y(1)]))
eq2=vpa(subs(eq,[x y],[X(7) Y(7)]))
[a0 a1]=solve([eq1 eq2])
y(x)=a0+a1*x
% 0.2848*x + 70.86
Y2=y(X)
% [ 76.3, 77.98, 79.43, 81.11, 82.25, 83.7, 85.1]
D=Y2-Y
% [ 0, 0.1803, -0.3173, 0.3129, -0.0979, -0.1955, 0]
SD=vpa(sum(D))
% -0.1175
SD2=vpa(sum(D.^2))
% 0.2789
plot(X,Y,'o',X,Y2)
grid