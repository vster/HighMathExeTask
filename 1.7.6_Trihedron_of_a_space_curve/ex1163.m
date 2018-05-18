syms t real;
r=[6*t, 3*t^2, t^3]
t1=1

% The unit vector of the binormal beta
beta=[ t^2/(t^2 + 2), -(2*t)/(t^2 + 2), 2/(t^2 + 2)]
% [ t^2/(t^2 + 2), -(2*t)/(t^2 + 2), 2/(t^2 + 2)]

% Tangential unit vector tau
tau=[ 2/(t^2 + 2), (2*t)/(t^2 + 2), t^2/(t^2 + 2)]
% [ 2/(t^2 + 2), (2*t)/(t^2 + 2), t^2/(t^2 + 2)]

% The unit vector of the principal normal nu
nu=simplify(cross(beta,tau))
% [ -(2*t)/(t^2 + 2), -(t^2 - 2)/(t^2 + 2), (2*t)/(t^2 + 2)]

nu1=subs(nu,t,t1)
% [ -2/3, 1/3, 2/3]
