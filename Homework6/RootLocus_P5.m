s = tf('s');

G = 1 / (s*(s+1));

pzmap(G)
figure()
rlocus(G)
rltool(G)