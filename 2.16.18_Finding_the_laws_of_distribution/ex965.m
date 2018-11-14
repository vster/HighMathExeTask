% Charlier distribution
I=[0 3 6 9 12 15 18 21 24 27]
nx=[1 5 8 15 28 21 10 6 3 3]

n=sum(nx)
% 100
T=1:10
X=3*T-1.5
%   1.5000    4.5000    7.5000   10.5000   13.5000   16.5000   19.5000   22.5000   25.5000
%   28.5000
W=nx/n
%    0.0100    0.0500    0.0800    0.1500    0.2800    0.2100    0.1000    0.0600    0.0300
%    0.0300
MT=sum(W.*T)
% 5.3600
MX=3*MT-1.5
% 14.5800
MT2=sum(W.*T.^2)
% 32.0600
DT=MT2-MT^2
% 3.3304
sigt=sqrt(DT)
% 1.8249
sigx=3*sigt
% 5.4748
MT3=sum(W.*T.^3)
% 209.4200
MT4=sum(W.*T.^4)
% 1.4755e+03

alfa1=MT
alfa2=MT2
alfa3=MT3
alfa4=MT4

mu3t=alfa3-3*alfa1*alfa2+2*alfa1^3
% 1.8765
Skt=mu3t/sigt^3
% 0.3087
mu4t=alfa4-4*alfa1*alfa3+6*alfa1^2*alfa2-3*alfa1^4
% 35.8313
sig4t=DT^2
% 11.0916
Ext=mu4t/sig4t-3
% 0.2305
Exx=Ext
% 0.2305