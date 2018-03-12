syms t x y z real;
r=[6*t, 3*t^2, t^3]
t1=1

% Единичный вектор бинормали beta
beta=[ t^2/(t^2 + 2), -(2*t)/(t^2 + 2), 2/(t^2 + 2)]
pretty(beta)
% Уравнение соприкасающейся плоскости винтовой линии
eq=simplify(beta(1)*(x-r(1))+beta(2)*(y-r(2))+beta(3)*(z-r(3)))
simplify(eq==0)
pretty(eq==0)

eq1=subs(eq,t,t1)
pretty(3*eq1==0)