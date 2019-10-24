function Root_Locus()

s = tf('s');

G = (s^2 + 5*s + 100) / (s-4)*(s+4)*(s^2 + 20*s + 400);

rlocus(G)

end