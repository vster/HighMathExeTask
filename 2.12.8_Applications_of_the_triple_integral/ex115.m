% Find the volume of a body bounded by surfaces
% z=0,
% cylindrical surface z=0.5*(x^2+y^2)
% and the sphere x^2+y^2+z^2=4

syms x y z;
z1=0.5*(x^2+z^2)
z2=sqrt(4-x^2-y^2)

ezmesh(z1)
hold on
ezmesh(z2)
hold off

% Not understand
