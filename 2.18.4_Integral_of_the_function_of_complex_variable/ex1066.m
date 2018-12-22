% Calculate int(gamma)(2*z-1-i)/((z-1)*(z-i))dz
% where gamma is circle |z|=2

% |z-1|<r,|z-i|<r,
% where r>0 is small value

% int(gamma)f(z)dz=int(gamma1)f(z)dz+int(gamma2)f(z)dz
% where
% gamma1 is circle |z-1|=r
% gamma2 is circle |z-i|=r
clear
syms z dz
f(z)=(2*z-1-i)/((z-1)*(z-i))
f(z)=1/(z-i)+1/(z-1)
% I=int(gamma)f(z)dz=int(gamma1)dz/(z-i)+int(gamma1)dz/(z-1)+
%                        =0
%     +int(gamma2)dz/(z-1)+int(gamma2)dz/(z-1)
%                              =0

% I=int(gamma1)dz/(z-1) + int(gamma2)dz/(z-1)
df1=dz/(z-1)
df2=dz/(z-i)

% gamma1 is z=1+r*exp(i*phi)
% gamma2 is z=i+r*exp(i*phi)

syms r phi dr d_phi
z1=1+r*exp(i*phi)
z2=i+r*exp(i*phi)
dz1=diff(z1,phi)*d_phi
dz2=diff(z2,phi)*d_phi

df1=subs(df1,[z dz],[z1 dz1])
df2=subs(df2,[z dz],[z2 dz2])

I1=int(df1/d_phi,phi,0,2*pi)
I2=int(df2/d_phi,phi,0,2*pi)
I=I1+I2
% pi*4i