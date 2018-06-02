% The body rotates around the axis with a constant angular velocity of w.
% Find the velocity vortex at an arbitrary point in the body.

% rot_v=rot(w*r), where r=x*i+y*j+z*k
syms x y z wx wy wz real;
w=[wx wy wz]
r=[x y z]
v=cross(w,r)
% [ wy*z - wz*y, wz*x - wx*z, wx*y - wy*x]
rot_v=curl(v,[x y z])
% rot_v = [2*wx,2*wy,2*wz] = 2*w