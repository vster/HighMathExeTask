z=1i
asin_z_1=-1i*log(1i*z+sqrt(1-z^2))
% 0.0000 + 0.8814i
asin_z_2=-1i*log(1i*z-sqrt(1-z^2))
% 3.1416 - 0.8814i
sin(asin_z_1)
% 0.0000 + 1.0000i
sin(asin_z_2)
% 0.0000 + 1.0000i