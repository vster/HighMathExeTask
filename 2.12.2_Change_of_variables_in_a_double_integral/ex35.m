% y=x
% y=2*x
% x=0
% x=1

syms u v;
x=u*(1-v)
y=u*v

% якобиан
J=det([diff(x,u),diff(x,v);diff(y,u),diff(y,v)])
J=abs(J)