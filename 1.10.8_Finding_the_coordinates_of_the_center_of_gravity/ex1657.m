syms x;
y=2*x-x^2

slv=solve(y)
% x=2..0

S=int(y,0,2)

xa=1/S*int(x*y,0,2)
ya=1/(2*S)*int(y^2,0,2)
% 1 2/5