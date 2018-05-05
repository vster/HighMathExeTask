syms x dx lam;
I=int(exp(-x^2-lam^2/x^2),x,0,inf)

dI=diff(I,lam)
df=-(2*lam*exp(- lam^2/x^2 - x^2))/x^2*dx

syms z dz;
% lam/x=z
% -lam/x^2*dx=dz
% x^2=lam^2/z^2
df=-2*exp(-lam^2/z^2-z^2)*dz
I=int(-2*exp(-lam^2/z^2-z^2),z,0,inf)

% Запутался...(((
