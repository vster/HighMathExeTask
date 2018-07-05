% Determine the mass of the wire having the shape of a 
% segment from point A (1,1) to B (2,4).
% The mass is distributed along a segment with density
% ro(x,y)=3*x+2*y

% (x-xA)/(xB-xA)=(y-yA)/(yB-yA)=t => (x-1)/(2-1)=(y-1)/(4-1)=t =>
%  (x-1)/1=(y-1)/3=t =>
syms t;
x=t+1
y=3*t+1
ro=3*x+2*y
digits(4)

m=int(ro*(sqrt(diff(x,t)^2+diff(y,t)^2)),t,0,1)
% (19*10^(1/2))/2
vpa(m)
% 30.04


