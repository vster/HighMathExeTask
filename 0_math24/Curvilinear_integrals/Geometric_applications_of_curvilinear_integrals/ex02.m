% Compute the length of the astroid
% x^(2/3)+y^(2/3)=a^(2/3)

syms x a;
y=(a^(2/3)-x^(2/3))^(3/2)

% L=int(a:b)sqrt(1+diff(y,x)^2)*dx

f=sqrt(1+diff(y,x)^2)
f=simplify(f)
% (a^(2/3)/x^(2/3))^(1/2)
f=a^(1/3)/x^(1/3)
L=4*int(f,x,0,a)
% 6*a