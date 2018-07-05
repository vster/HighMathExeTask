% Calculate the induction of the magnetic field in vacuum at a distance r 
% from the axis of an infinitely long conductor with current I.

syms r I mu_0 B;

% int(C)B*dr=mu_0*I
% int_c(C)B*dr=B*int_c(C)dr=2*pi*r*B
% 2*pi*r*B=mu_0*I => B=mu_0*I/(2*pi*r)

B1=solve(2*pi*r*B==mu_0*I,B)
% B=(I*mu_0)/(2*pi*r)
