% Show that w=z^2 is a continuous function for any z

% z^2-z0^2=(z-z0)*(z+z0)
% If z->z0
% then exist such positive M
% that |z|<M,|z0|<M
% But
% |z^2-z0^2|=|z-z0|*|z+z0|<|z-z0|*(|z|+|z0|)<2*M*|z-z0|
% Take delta<eps/(2*M)
% |z-z0|<delta =>
% |z^2-z0^2|<2*M*delta<2*M*eps/(2*M) => |z^2-z0^2|<eps
% So
% lim(z->z0)z^2=z0^2
% and w=z^2 is continuous function