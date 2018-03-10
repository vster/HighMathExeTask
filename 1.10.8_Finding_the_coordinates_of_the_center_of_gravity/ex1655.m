syms x;
y=4-x^2

slv=solve(y)
% x=-2..2
S=int(y,-2,2)

xa=1/S*int(x*y,-2,2)
ya=1/(2*S)*int(y^2,-2,2)
% 0 8/5
