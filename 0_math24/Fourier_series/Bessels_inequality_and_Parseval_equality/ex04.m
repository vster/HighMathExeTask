% Calculate the sum of the series
% sum(k=0:inf)1/(2*k+1)^2

% sum(n=1:inf)sin(d*n)^2/n^2=d*(pi-d)/2
% d=pi/2
syms n d;
d=pi/2
u(n)=sin(d*n)^2/n^2
% sin((pi*n)/2)^2/n^2=pi/2*(pi-pi/2)/2=pi^2/8

%              0, n=2*k
% sin(n*pi/2)= 1, n=4*k+1
%              -1, n=4*k+3

% then

% sin(n*pi)^2= 0, n=2*k
%              1, n=2*k+1

% sum(k=0:inf)1/(2*k+1)^2=pi^2/8
