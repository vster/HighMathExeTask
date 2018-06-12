% The Stokes formula
% int(C)P*dx+Q*dy+R*dz =
%   = int_int(S)[(diff(R,y)-diff(Q,z))*cos(alfa)+
%      +(diff(P,z)-diff(R,x)*cos(beta))+
%      +(diff(Q,x)-diff(P,y))*cos(gamma)]*dS

% Ostrogradsky-Gauss formula
% int_int(S)(P*cos(alfa)+Q*cos(beta)+R*cos(gamma))*dS = 
%   = int_int_int(T)(diff(P,x)+diff(Q,y)+diff(R,z))*dx*dy*dz

% u=u(M) - scalar field
% F=F(M) - vector field

% u(M)=u(x,y,z)
% F(M)=P(x,y,z)*i+Q(x,y,z)*j+R(x,y,z)*k

% Vector line
% dx/P=dy/Q=dz/R

% Gradient of a scalar field u=u(x,y,z) is vector
% grad(u)=diff(u,x)*i+diff(u,y)*j+diff(u,z)*k

% Divergence of a vector field F(M)=P*i+Q*j+R*k is scalar
% div(F)=diff(p,x)+diff(Q,y)+diff(R,z)

% Vortex (rotor) of the vector field F(M)=P*i+Q*j+R*k is vector
% rot(F)=(diff(R,y)-diff(Q,z))*i+(diff(P,z)-diff(R,x))*j+
%    +(diff(Q,x)-diff(P,y)*k = 
% |  i    j    k   |
% | d/dx d/dy d/dz |
% |  P    Q    R   |

% The flow of a vector field F(M) through the surface S
% P = int_int(S)F*n*dS = int_int(S)Fn*dS = 
%   = int_int(S)(P*cos(alfa)+Q*cos(beta)+R*cos(gamma))*dS

% The linear integral of the vector F along the oriented curve K
% int(K)F*dr=int(K)P*dx+Q*dy+R*dz

% If the contour C is closed then
% Ic=int(C)F*dr=int(C)P*dx+Q*dy+R*dz
% is the circulation of a vector field F(M) along the contour C.

% Ostrogradsky-Gauss formula in vector form
% int_int_int(T)div(F)*dV=int_int(S)F*n*dS

% The Stokes formula in vector form
% int(C)F*dr=int_int(S)n*rot(F)*dS

% A vector field F(M) is called irrotational if rot(F)==0

% A vector field F(M) is called a potential field if F=grad(u)
% In this case rot(F)=rot(grad(u))=0
% Then potential field is irrotational

% A vector field F(M) is called solenoidal (or tubular), if div(F)==0
% As div(rot(F))==0, then the field of vortices is solenoidal





