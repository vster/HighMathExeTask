% fa=1/(2*(z-1))+1/(2^2*(z-1)^2)+...
% fb=1+(z-1)/5+(z-1)^2/5^2+...
% fa+fb

% Put in fa z-1=1/z1, then we get
% fa=z1/2+z1^2/2^2+...
syms n
ua(n)=1/2^n
ro=limit(ua(n-1)/ua(n),n,inf)
% 2
% |z1|<2 => |1/(z-1)|<2 => |z-1|>1/2

% (fb)
ub(n)=1/5^n
R=limit(ub(n-1)/ub(n),n,inf)
% 5
% |z-1|<5
% And so series converges at 1/2<|z-1|<5

% 1/(2*(z-1))<1 and |(z-1)/5|<1
% So 1/2<|z-1|<5
