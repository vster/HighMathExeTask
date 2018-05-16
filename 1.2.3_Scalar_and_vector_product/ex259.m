a=[1 2 3]
b=[6 4 -2]
% Determine the angle between vectors

cos_phi=dot(a,b)/(norm(a)*norm(b))
phi=acos(cos_phi)