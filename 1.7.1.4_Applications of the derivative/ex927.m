syms y x clear;
y1=x^3
y2=1/x^2
% Найти углы между заданными линиями

s=solve(y-x^3==0,y-1/x^2==0)
A=[s.x(1),s.y(1)]
B=[s.x(2),s.y(2)]

ezplot(y1)
hold on
ezplot(y2)
plot(A(1),A(2),'ro')
hold off

dy1=diff(y1)
dy2=diff(y2)

k1_a=subs(dy1,x,A(1))
k2_a=subs(dy2,x,A(1))

% Формула угла между линиями в точке A
tan_phi_a=(k2_a-k1_a)/(1+k1_a*k2_a)
phi_a=atan(tan_phi_a)
digits(3)
phi_a=vpa(phi_a)