% Integral Fourier formula
% f(x) = 1/pi int (0:+inf) dz int (-unf:+inf) f(u)*cos(z(u-x)) du

% The Fourier integral in complex form
% f(x) = 1/(2*pi) int (-inf:+inf)dz int (-inf:+inf) f(u)*exp(i*z(u-x)du =
% = 1/(2*pi) int (-inf:+inf) exp(-i*z*x)dz int (-inf:+inf) exp(izu)*f(u)du

% The Fourier integral for an even function
% f(x) = 2/pi int (0:+inf) cos(z*x)dz int (0:+inf) f(u)*cos(z*u)du

% The Fourier integral for an odd function
% f(x) = 2/pi int (0:+inf) sin(z*x)dz int (0:+inf) f(u)*sin(z*u)du

% 1) The Fourier transform of the general form
% F(z) = 1/sqrt(2*pi) int (-inf:+inf) exp(i*z*x)*f(x)dx  (direct)
% f(x) = 1/sqrt(2*pi) int (-inf:+inf) exp(-i*z*x)*F(z)dz (reverse)

% 2) Cosine Fourier transform (for even functions)
% fc(z) = sqrt(2/pi) int (0:+inf) f(x)*cos(z*x)dx   (direct)
% f(x) = sqrt(2/pi) int (0:+inf) fc(z)*cos(z*x)dz   (reverse)

% 3) Sine-Fourier transform (for odd functions)
% fs(z) = sqrt(2/pi) int (0:+inf) f(x)*sin(z*x)dx   (direct)
% f(x) = sqrt(2/pi) int (0:+inf) fs(z)*sin(z*x)dz   (reverse)