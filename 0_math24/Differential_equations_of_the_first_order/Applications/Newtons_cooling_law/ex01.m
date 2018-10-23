% Body temperature decreased from 200 to 100 in the first hour. 
% Determine how many degrees the temperature drops in another hour, 
% if the ambient temperature is 0?

% T(t)=Ts+(T0?Ts)*exp(-k*t)

% / 100=Ts+(200-Ts)*exp(-k) => exp(-k)=(100-Ts)/(200-Ts)
% \ X=Ts+(200-Ts)*exp(-2*k) 
% X=Ts+(200-Ts)*(100-Ts)^2/(200-Ts)^2
% X=Ts+(100-Ts)^2/(200-Ts)