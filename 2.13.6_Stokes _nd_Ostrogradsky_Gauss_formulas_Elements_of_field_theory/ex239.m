% Given a scalar field
% u(x,y,z)
% Find div(grad(u))

syms x y z;
syms u(x,y,z);
grad_u=[diff(u,x) diff(u,y) diff(u,z)]
% [ D([1], u)(x, y, z), D([2], u)(x, y, z), D([3], u)(x, y, z)]
div_grad_u=diff(u,x,2)+diff(u,y,2)+diff(u,z,2)