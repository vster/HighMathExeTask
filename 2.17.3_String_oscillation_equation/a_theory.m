% u(x,t)
% d2u/dt2=a^2*d2u/dx^2+f
% where a^2=T0/ro, f=F/ro
% T0 is strong initial tension
% ro is unit length 

% If f=0
% we get Equation of free vibrations of a string
% d2u/dt2=a^2*d2u/dx2

% Put u(t=0)=phi(x), du/dt(t=0)=ksi(x)
% These are the initial conditions of the problem.

% Bringing the equation 
% d2u/dt2-a^2*d2u/dt2=0 
% to the canonical form
% d2u/(dksi*deta)=0
% where ksi=x-a*t, eta=x+a*t

% General solution of the last equation
% u=Teta1(ksi)+Teta2(eta)

% y=Teta1(x-a*t)+Teta2(x+a*t)
% Picking up Teta1 and Teta2 to 
% math initial conditions
% we get
% u=(phi(x-a*t)+phi(x+a*t))/2+1/(2*a)*int(x-a*t:x+a*t)psi(z)dz
