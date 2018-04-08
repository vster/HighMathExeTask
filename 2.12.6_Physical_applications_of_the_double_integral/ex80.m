% Вычислить момент инерции отн. оси 0x, ограниченной кардиоидой
% ro=a*(1+cos(teta))

% Ix = int int (D) y^2 dx dy 
% В полярных координатах
% Ix = int int (D) ro^2*sin(teta)^2*ro d_ro d_teta

syms ro teta a;
Ix=int(int(ro^3*sin(teta)^2,ro,0,a*(1+cos(teta))),teta,0,2*pi)
% (21*pi*a^4)/32
