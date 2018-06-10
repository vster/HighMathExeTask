% Find the circulation of the vector 
% A=-y*i+x*j
% along the circle
% x^2+(y-1)^2=1

syms x y z real
A=[-y,x,0]
rot_A=curl(A,[x y z])
% [0 0 2]
f1=x^2+(y-1)^2-1

% n=k
% C = int int (S) n*rot_A*dS =
%   = 2* int int (S) n*k*dS = 2* int int (S) dx*dy

syms ro phi;
x1=ro*cos(phi);
y1=ro*sin(phi);

f1=subs(f1,[x y],[x1 y1])
f1=simplify(f1)
% ro^2 - 2*sin(phi)*ro
% 0<=ro<=2*sin(phi)
% 0<=phi<=pi
C=2*int(int(ro,ro,0,2*sin(phi)),phi,0,pi)
% 2*pi