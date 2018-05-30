% Transform the surface integral over a closed surface S
% I = int int (S) (du/dx)*dy*dz+(du/dy)*dx*dz+(du/dz)*dx*dy
% to the integral over the volume bounded by this surface.

% I = int int (S) (du/dx*cos_alfa+du/dy*cos_beta+du/dz*cos_gamma)*dS
% I= int int int (T) (diff(u,x,2)+diff(u,y,2)+diff(u,z,2))*dx*dy*dz
