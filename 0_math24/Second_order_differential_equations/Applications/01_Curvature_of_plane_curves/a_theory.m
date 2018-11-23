% Curvature of plane curves

% k=lim(delta_s->0)delta_phi/delta_s

% If the curve is defined by its radius vector R(t), 
% its curvature is given by the formula
% k=(diff(R,t) x diff(R,t,2))/abs(diff(R,t))^3

% In the parametric specification of the coordinates 
% of the curve x(t) and y(t), the formula 
% for calculating the curvature takes the form
% k=(x'*y''-y'*x'')/((x')^2+(y')^2)^(3/2)

% If the flat curve is given by an explicit function y = f(x), 
% the curvature of the curve is calculated by the formula
% k=y''/(1+(y')^2)^(3/2)

% In the case when the curve is given in polar coordinates 
% in the form ro=ro(phi), its curvature k will 
% be determined by the expression
% k(phi)=(ro^2+2*(ro')^2-ro*ro'')/(ro^2+(ro')^2)^(3/2)

% The inverse of the curvature is called the radius of curvature:
% R=1/abs(k)