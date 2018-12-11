clear
syms x y(x)
LMy=OperL(OperM(y))
% x*(x^2*diff(y(x), x) + 2*x*y(x) + diff(y(x), x, x, x)) - x^2*y(x) - diff(y(x), x, x)
MLy=OperM(OperL(y))
% x*diff(y(x), x, x, x) - x^2*(y(x) - x*diff(y(x), x)) + diff(y(x), x, x)
D=simplify(LMy-MLy)
% 2*x^2*y(x) - 2*diff(y(x), x, x)

function Ly=OperL(y)
syms x
Ly=x*diff(y,x)-y;
end

function My=OperM(y)
syms x
My=diff(y,x,2)+x^2*y;
end