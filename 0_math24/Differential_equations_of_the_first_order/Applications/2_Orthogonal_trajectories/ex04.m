% Determine the orthogonal trajectories for the sinusoid family 
% y = C*sin(x).

syms x C
y1=C*sin(x)
dy1=C*cos(x)
% dy/y=cos(x)/sin(x)=cot(x)

% y' -> (-1/y')
% -1/y'=cot(x)*y
% y'=-tan(x)/y
% dy/dx+tan(x)/y=0
% y*dy+tan(x)*dx=0
eq1=int(y,y)+int(tan(x),x)
% y^2/2 - log(cos(x)) = log(C)
% exp(y^2/2)=C*cos(x)
% cos(x)=C1*exp(y^2/2)