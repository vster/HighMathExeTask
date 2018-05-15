% Estimate the max and min values of the integral
% I = int int int (U) 1/log(e+x+y+z) dV
% where U={(x,y,z)|0<=x<=1,0<=y<=2,0<=z<=3}

V=1*2*3

% Estimate of the integral
% m*V<=I<=M*V

syms e;
m=1/log(e+1+2+3)
M=1/log(e)
M=1
% 6/log(e+6)<=I<=6