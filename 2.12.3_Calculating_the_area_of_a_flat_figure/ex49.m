syms ro teta;
ro1=2-cos(teta)
ro2=2

ezpolar(ro1)

slv=solve(ro1==ro2)

S=2*int(int(ro,ro,2-cos(teta),2),teta,0,pi/2)