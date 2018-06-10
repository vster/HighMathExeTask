% Find the gradient of the gradient of the function
% u=exp(x+y+z)

syms x y z;
r=[x y z]
u=exp(x+y+z)
grad_u=gradient(u)
% [exp(x + y + z),exp(x + y + z),exp(x + y + z)]
div_grad_u=divergence(grad_u,r)
% 3*exp(x + y + z)

div_grad_u_2=divergence(gradient(u),r)
% 3*exp(x + y + z)