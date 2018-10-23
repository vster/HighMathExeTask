% Find the orthogonal trajectories of the family of straight lines 
% y = C*x, where C is the parameter

syms x y C
y1=C*x
dy1=diff(y1)
% C

% / y=C*x => dy=y/x
% \ dy=C

% Change y' to (-1/y')
% -1/y'=y/x => y'=-x/y
% dy/dx+x/y=0
% y*dy+x*dx=0
eq2=int(y,y)+int(x,x)
% x^2/2 + y^2/2=C => x^2+y^2=2*C=R^2
