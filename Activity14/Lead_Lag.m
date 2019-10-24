function Lead_Lag()
close all

s = tf('s');

z = 10;
p = 100;

G = (s+z/s+p) * (100/s^2 - 25^2);

rlocus(G)

end