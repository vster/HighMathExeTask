% Expand in Laurent series in powers of z function
% f(z)=1/((z-1)*(z-3))
% in the neighborhood of 1<|z|<3

% 1/((z-1)*(z-3))=A/(z-1)+B/(z-3)
% 1=A*(z-3)+B*(z-1)
% Put z=1 => 1=A*(-2) => A=-1/2
% Put z=3 => 1=B*2 => B=1/2

% So
% f(z)=(-1/2)*1/(z-1)+(1/2)*1/(z-3)

% As 1<|z|<3
% f(z)=(-1/2)*(1/z)/(1-(1/z))-(1/2)*(1/3)/(1-(z/3))
% so
% f(z)=-1/2*(sum(n=1:inf)1/z^n+sum(n=1:inf)z^(n-1)/3^n)