% Expand in Laurent series in powers of z function
% f(z)=1/(2*z-5)
% in the neighborhood of z=inf

% f(z)=1/(2*z-5)=(1/(2*z))/(1-5/(2*z))
% |5/(2*z)|<1 => |z|>5/2

clear
syms z n
a=1/(2*z)
q=5/(2*z)
term(n)=a*q^(n-1)
for j=1:5
    lterm(j)=term(j);
end
disp(lterm)