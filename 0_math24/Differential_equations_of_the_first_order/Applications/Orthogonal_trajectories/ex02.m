% The family of hyperbolic curves is given by the equation 
% y =C/x.
% Find the orthogonal trajectories to these curves.

syms x C
y1=C/x => % C=x*y1
dy1=diff(y1)
% -C/x^2 => -x*y1/x^2 => -y1/x
% y'=-y/x

% Change y' to (-1/y')
% -1/y'=-y/x => y'=x/y
% dy/dx=x/y => y*dy-x*dx=0
% x^2-y^2=C
