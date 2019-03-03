% Investigate the convergence of a series
% fa=1/z+2/z^2+...
% fb=1+2*z+(2*z)^2+...

% (fa)
% Put in fa z=1/z1, then we get
% fa=z1+2*z1^2+...
syms n
ua(n)=n
ro=limit(ua(n-1)/ua(n),n,inf)
% 1
% |z1|<1 => |1/z|<1 => |z|>1

% (fb)
ub(n)=2^n
R=limit(ub(n-1)/ub(n),n,inf)
% 1/2
% |z|<1/2

% |z|>1 and |z|<1/2
% these inequalities are incompatible
% hence this series does not converge at any point of the plane.