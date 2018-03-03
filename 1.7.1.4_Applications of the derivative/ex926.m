syms y x;
y1=x-x^2
y2=5*x
% Найти углы между заданными линиями

s=solve(y-x+x^2==0,y-5*x==0)
A=[s.x(1),s.y(1)]
B=[s.x(2),s.y(2)]

ezplot(y1)
hold on
ezplot(y2)
plot(A(1),A(2),'ro')
plot(B(1),B(2),'ro')
hold off

dy1=diff(y1)
dy2=diff(y2)

% В точке A
k1_a=subs(dy1,x,A(1))
k2_a=subs(dy2,x,A(1))

tan_phi_a=(k2_a-k1_a)/(1+k1_a*k2_a)
phi_a=atan(tan_phi_a)
digits(3)
phi_a=vpa(phi_a)

% В точке B
k1_b=subs(dy1,x,B(1))
k2_b=subs(dy2,x,B(1))

tan_phi_b=(k2_b-k1_b)/(1+k1_b*k2_b)
phi_b=atan(tan_phi_b)
phi_b=vpa(phi_b)


