function Routh_Stability()

s = tf('s');

k = 2;
k0 = 100;
z = 10;
a = 10;
p = 2;

G = (k*k0*(s+z)) / (s^3 + p*s^2 + (k*k0-a^2)*s + (k*k0*z-a^2*p));

step(G)
end