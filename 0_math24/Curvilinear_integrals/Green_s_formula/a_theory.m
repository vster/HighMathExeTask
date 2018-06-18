% Green's formula
% int(K)P*dx+Q*dy=int_int(D)(dQ/dx-dP/dy)*dx*dy

% The Green formula can also be written in vector form.
% To do this, we introduce the concepts of the rotor of a vector field.
% Let the vector field be described by a function
% F=P(x,y,z)*i+Q(x,y,z)*j+R(x,y,z)*k
% A rotor or vortex of a vector field F is a vector denoted rot(F) 
% or laplacian x F and equal to
%                        |  i    j    k   |
% rot(F)=laplacian x F = | d/dx d/dy d/dz | 
%                        |  P    Q    R   |

% The Green formula in vector form is written in the form
% int_int(R)(rot(F))*k*dx*dy = int(C)F*dr
