% The body rotates around the axis with a constant angular velocity of w.
% Find the velocity vortex at an arbitrary point in the body.

% rot(v)=rot(w*r), where r=x*i+y*j+z*k
syms x y z wx wy wz real;
w=[wx wy wz]
r=[x y z]
v=cross(w,r)
rot_v=curl(v,r)
% rot_v = [2*wx,2*wy,2*wz] = 2*w