% ro=1
% r=2/sqrt(3)*cos(teta)

syms ro teta;
slv=solve(1==2/sqrt(3)*cos(teta),teta)
A=[1,slv(1)]

S=2*int(int(ro,ro,1,2/sqrt(3)*cos(teta)),teta,0,pi/6)
% 3^(1/2)/6 - pi/18