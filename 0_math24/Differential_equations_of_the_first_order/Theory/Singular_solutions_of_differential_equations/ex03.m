% Find singular solutions of the equation
% (y')^2*(1-y)^2=2-y

clear
syms x y(x)
eqn=diff(y(x))^2*(1-y)^2==2-y
ySol=dsolve(eqn)
%                                          2 - singular solution
% root(z^3 - 3*z + (9*(C21 + x)^2)/4 - 2, z)
% root(z^3 - 3*z + (9*(C24 - x)^2)/4 - 2, z)