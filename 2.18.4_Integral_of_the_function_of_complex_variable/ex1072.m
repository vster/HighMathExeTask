% Calculate int(gamma)((a+b)*z-a*z1-b*z2)/((z-z1)*(z-z2))dz
% where gamma is circle |z|<=R
% z1 and z2 are inside circle

% |z-z1|<r,|z-z2|<r,
% where r>0 is small value

% int(gamma)f(z)dz=int(gamma1)f(z)dz+int(gamma2)f(z)dz
% where
% gamma1 is circle |z-z1|=r
% gamma2 is circle |z-z2|=r
clear
syms z dz z1 z2 a b 
f(z)=((a+b)*z-a*z1-b*z2)/((z-z1)*(z-z2))
f(z)=a/(z-z1)+b/(z-z2)
% I=int(gamma)f(z)dz=int(gamma1)a*dz/(z-z1)+int(gamma1)b*dz/(z-z2)+
%                                             =0
%     +int(gamma2)a*dz/(z-z1)+int(gamma2)b*dz/(z-z2)
%          =0

% I=int(gamma1)a*dz/(z-z1) + int(gamma2)b*dz/(z-z2)
df1=a*dz/(z-z1)
df2=b*dz/(z-z2)

% gamma1 is z=z1+r*exp(i*phi)
% gamma2 is z=z2+r*exp(i*phi)

syms r phi dr d_phi
fz1=z1+r*exp(i*phi)
fz2=z2+r*exp(i*phi)
dfz1=diff(fz1,phi)*d_phi
dfz2=diff(fz2,phi)*d_phi

df1=subs(df1,[z dz],[fz1 dfz1])
df2=subs(df2,[z dz],[fz2 dfz2])

I1=int(df1/d_phi,phi,0,2*pi)
I2=int(df2/d_phi,phi,0,2*pi)
I=I1+I2
% pi*a*2i + pi*b*2i