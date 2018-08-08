% 1i^1i

% z=1i=exp(1i*(pi/2+2*pi*k))
%   where k - integer number
% z1=1i^1i=z^1i
% z1=exp(-pi/2+2*pi*k)

syms k;
for k=-3:3
    z1=exp(-pi/2+2*pi*k)
end

