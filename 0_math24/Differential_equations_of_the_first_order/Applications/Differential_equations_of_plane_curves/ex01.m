% Determine the differential equation for the family 
% of curves given by the equation
% y=exp(x+C)


syms x C
y=exp(x+C)
dy=diff(y,x)
% y'=exp(C + x)
% y'=y => y'-y=0