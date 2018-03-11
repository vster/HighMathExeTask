syms a h k;

r=sqrt(h^2+a^2)

% sin_phi=h/r
% I=k*sin_phi/r^2=k*h/r^3

I=k*h/r^3

dI=diff(I,h)
rs=solve(dI,h)
rs=rs(1)

% a/sqrt(2)

