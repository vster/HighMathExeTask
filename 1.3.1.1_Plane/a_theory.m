% 1) The equation of the plane in vector form
% r*n=p
% here r=x*i+y*j+z*k is radius vector of current point M(x,y,z)
% n=cos(alfa)*i+cos(beta)*j+cos(gamma)*k is unit vector 
% perpendicular to the plane
% When going to coordinates
% x*cos(alfa)+y*cos(beta)+z*cos(gamma)-p=0

% 2) The equation of every plane
% A*x+B*y+C*z+D=0
% A,B,C are the coordinates of some vector 
% N=A*i+B*j+C*k perpendicular to the plane
% To reduce the equation of the plane to the normal form, 
% multiply all the terms of the equation 
% by the normalizing factor
% mu=+-1/N=+-1/sqrt(A^2+B^2+C^2)

% 3) If D/=0 we divide all the terms of the equation by -D
% the equation of the plane can be reduced to the form
% x/a+y/b+z/c=1
% here a=-D/A, b=-D/B, c==D/C
% This equation is called the equation of a plane in segments.

% 4) Angle between planes
% cos(phi)=(A1*A2+B1*B2+C1*C2)/
%     /(sqrt(A1^2+B1^2+C1^2)*sqrt(A2^2+B2^2+C2^2))
%
% Condition of parallelism of planes
% A1/A2=B1/B2=C1/C2
%
% The condition of perpendicularity of the planes
% A1*A2+B1*B2+C1*C2==0

% 5) The distance from the point M0(x0,y0,z0) to the plane
% d=abs(A*x0+B*y0+C*z0+D)/sqrt(A^2+B^2+C^2)

% 6) The equation of the plane passing through the point 
% M0(x0,y0,z0) and perpendicular to the vector 
% N=A*i+B*j+C*k is
% A*(x-x0)+B*(y-y0)+C*(z-z0)=0
% or
% dot(N,R-M0)==0
% where R=[x,y,z]

% 7) Equation
% A1*x+B1*y+C1*z+D1+lam*(A2*x+B2*y+C2*z+D2)==0
% for an arbitrary lam defines a plane passing through 
% the recrossing plane of the planes
% A1*x+B1*y+C1*z+D1=0 and A2*x+B2*y+C2*z+D2=0
%
% dot(N1,R)+D1+lam*(dot(N2,R)+D2)==0

% 8) Suppose that three points M1(r1),M2(r2),M3(r3) are given,
% r1=(x1,y1,z1),r2=(x2,y2,z2),r3=(x3,y3,z3)
% then the equation of the plane passing through these points
% (r-r1)*(r2-r1)*(r3-r1)==0, where r=(x,y,z)
% or
% | x-x1  y-y1  z-z1  |
% | x2-x1 y2-y1 z2-z1 | == 0
% | x3-x1 y3-y1 z3-z1 |







