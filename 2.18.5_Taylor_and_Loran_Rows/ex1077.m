% expand in a Laurent series in powers z function f(z)=1/(2*z-5)
% at point z=0

syms z n
% f(z)=(-1/5)/(1-2*z/5)
a=-1/5
q=2*z/5
term(n)=a*q^(n-1)
% -((2*z)/5)^(n - 1)/5
for j=1:5
    lterm(j)=term(j);
end
disp(lterm)
% [ -1/5, -(2*z)/25, -(4*z^2)/125, -(8*z^3)/625, -(16*z^4)/3125]

% |2*z/5|<1 => |z|<5/2