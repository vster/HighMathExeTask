% Determine the orthogonal trajectories for the family of curves 
% given by the power function y = C*x^4.

syms x C
y1=C*x^4
dy1=diff(y1)
% 4*C*x^3
% y/y'=x/4 

% Change y' to (-1/y')
% y'=-x/4y
% dy/dx+x/4y=0
% 4*y*dy+x*dx=0
% 4*y^2+x^2=2*C
% y^2/(C/2)+x^2/(2*C)=1
% y^2/(sqrt(C/2))^2+x^2/(sqrt(2*C))^2=1
% sqrt(2*C)/sqrt(C/2)=2