syms t a R real;
assume(R>a)
r=[a*cos(t), a*sin(t), sqrt(R^2-a^2)*t]

% Tangential unit vector tau
tau=[ -(a*sin(t))/R, (a*cos(t))/R, (R^2 - a^2)^(1/2)/R]
% The unit vector of the binormal beta
beta=[ (sin(t)*(R^2 - a^2)^(1/2))/R, -(cos(t)*(R^2 - a^2)^(1/2))/R, a/R]
% The unit vector of the principal normal nu
nu=simplify(cross(beta,tau))
% [ -cos(t), -sin(t), 0]