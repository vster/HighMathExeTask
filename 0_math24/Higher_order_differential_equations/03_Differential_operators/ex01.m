clear
syms x y(x)
LMy=OperL(OperM(y))
% 3*y(x) + 2*diff(y(x), x) + 3*diff(y(x), x, x) + 2*diff(y(x), x, x, x)
MLy=OperM(OperL(y))
% 3*y(x) + 2*diff(y(x), x) + 3*diff(y(x), x, x) + 2*diff(y(x), x, x, x)
LMy-MLy
% 0

function Ly=OperL(y)
syms x
Ly=diff(y,x,2)+y;
end

function My=OperM(y)
syms x
My=2*diff(y,x)+3*y;
end