% Expand in Laurent series in powers of z function
% f(z)=z^2/(z-1)
% in the neighborhood of 
% 1) z=0
% 2) z=inf

% 1) z=0
syms z n
% f(z)=-z^2/(1-z)
a=-z^2
q=z
term(n)=a*q^(n-1)
% -z^(n - 1)*z^2
for j=1:5
    lterm(j)=term(j);
end
disp(lterm)
% [ -z^2, -z^3, -z^4, -z^5, -z^6]

% 2) z=inf
% f(z)=z/(1-1/z)
a=z
q=1/z
term(n)=a*q^(n-1)
% z*(1/z)^(n - 1)
for j=1:5
    lterm(j)=term(j);
end
disp(lterm)
% [ z, 1, 1/z, 1/z^2, 1/z^3]
