% Compute the integral 
% int_int(S)dy*dz/x+ dz*dx/y + dx*dy/z
% where S is the part of the inner surface of the ellipsoid 
% given parametrically in the form 
% r(u,v) = (a*cos(u)*cos(v), b*sin(u)*cos(v), c*sin(v)). 
% The parameters u, v change in the intervals 
% 0<=u<=1, 0<=v<=pi/2.

% int_int(S)P*dy*dz+Q*dz*dx+R*dx*dy = 
%                    |   P     Q     R   |
%  = int_int(D(u,v))*| dx/du dy/du dz/du |*du*dv
%                    | dx/dv dy/dv dz/dv |


syms u v a b c
r=[a*cos(u)*cos(v),b*sin(u)*cos(v),c*sin(v)]
x=a*cos(u)*cos(v)
y=b*sin(u)*cos(v)
z=c*sin(v)

P=1/x
Q=1/y
R=1/z

A = [   P         Q          R;      ...
      diff(x,u) diff(y,u) diff(z,u); ...
      diff(x,v) diff(y,v) diff(z,v) ]

det_A=det(A)
det_A=simplify(det_A)
% (cos(v)*(a^2*b^2 + a^2*c^2 + b^2*c^2))/(a*b*c)

I=int(int(det_A,v,0,pi/2),u,0,1)
% (a*b)/c + (c*(a^2 + b^2))/(a*b)