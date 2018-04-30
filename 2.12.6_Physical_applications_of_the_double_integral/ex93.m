% Вычислить массу круглой пластинки радиуса r
% gam=delta*r/ro

syms ro teta r delta;
M=int(int(delta*r,ro,0,r),teta, 0, 2*pi)
% 2*pi*delta*r^2