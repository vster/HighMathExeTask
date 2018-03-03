syms x y;
y1=1+sin(x)
y2=1
% Найти углы между заданными линиями

s=solve(y-1-sin(x)==0,y-1==0)
A=[s.x(1),s.y(1)]
B=[s.x(2),s.y(2)]
% Найдены 2 точки пересечения

ezplot(y1)
hold on
plot([-7 7],[1 1])
plot(A(1),A(2),'ro')
plot(B(1),B(2),'ro')
hold off

dy1=diff(y1)
dy2=diff(y2)

% В точке A
k1_a=subs(dy1,x,A(1))
k2_a=0

tan_phi_a=(k2_a-k1_a)/(1+k1_a*k2_a)
phi_a=atan(tan_phi_a)
digits(3)
phi_a=vpa(phi_a)

% В точке B
k1_b=subs(dy1,x,B(1))
k2_b=0

tan_phi_b=(k2_b-k1_b)/(1+k1_b*k2_b)
phi_b=atan(tan_phi_b)
phi_b=vpa(phi_b)