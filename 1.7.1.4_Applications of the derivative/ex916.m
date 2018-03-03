syms x y;
y1=8-x^2
y2=x^2
% Найти угол между параболами

% Точки пересечения
s=solve(y==8-x^2,y==x^2)

ezplot(y1)
hold on
ezplot(y2)
hold off

dy1=diff(y1)
dy2=diff(y2)

% Точка A
k1_a=subs(dy1,x,s.x(1))
k2_a=subs(dy2,x,s.x(1))

tan_phi_a=(k2_a-k1_a)/(1+k1_a*k2_a)
phi_a=atan(tan_phi_a)

% Точка B
k1_b=subs(dy1,x,s.x(2))
k2_b=subs(dy2,x,s.x(2))

tan_phi_b=(k2_b-k1_b)/(1+k1_b*k2_b)
phi_b=atan(tan_phi_b)
