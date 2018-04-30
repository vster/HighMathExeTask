% Вычислить тройной интеграл
% I= int int int (T) z dx dy dz
% 0<=x<=1/2
% x<=y<=2x
% 0<=z<=sqrt(1-x^2-y^2)

syms x y z;
I=int(int(int(z,z,0,sqrt(1-x^2-y^2)),y,x,2*x),x,0,1/2)
% 7/192