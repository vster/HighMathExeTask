syms t;
r=[cosh(t)^2;sinh(t)*cosh(t);sinh(t)^2]
% Производная вектор-функции
dr=simplify(diff(r))

ezplot3(r(1),r(2),r(3))