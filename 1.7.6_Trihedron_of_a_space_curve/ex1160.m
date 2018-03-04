syms t a R x y z real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

% “ангенциальный единичный вектор tau
tau=[ -(a*sin(t))/R, (a*cos(t))/R, (R^2 - a^2)^(1/2)/R]
% ”равнение нормальной плоскости винтовой линии
eq=simplify(tau(1)*(x-r(1))+tau(2)*(y-r(2))+tau(3)*(z-r(3)))
pretty(R*eq==0)