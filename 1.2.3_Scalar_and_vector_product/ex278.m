syms m real;
a=[1, 1, m]
b=[1, 1, m+1]
c=[1, -1, m]
% Show that vectors can not be coplanar

% The mixed product
p=dot(a,cross(b,c))