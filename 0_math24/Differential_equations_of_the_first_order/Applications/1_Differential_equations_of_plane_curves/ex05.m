% Derive a differential equation for a family of two-parameter flat curves.
% y=C1*x^2+C2*x

syms x C1 C2
y=C1*x^2+C2*x

dy=diff(y,x)
% C2 + 2*C1*x
d2y=diff(y,x,2)
% 2*C1

% C1=d2y/2

% / y=d2y/2*x^2+C2*x
% \ dy=d2y*x+C2 => C2=dy-d2y*x

syms d2y dy x
y=simplify(d2y/2*x^2+(dy-d2y*x)*x)
% dy*x - (d2y*x^2)/2
% d2y*x^2-2*dy*x+2*y=0
% y''*x^2-2*y'*x+2*y

syms x y(x)
eqn=diff(y,x,2)*x^2-2*diff(y,x)*x+2*y==0
ySol=dsolve(eqn)
% C29*x^2 + C28*x
