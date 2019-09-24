function Problem6()

s = tf('s');

a = 0;
k = 2.5;

G = (100*k) / (s^2 + (25 + a)*s + 25*a + 100*k);

step(G)

hold on

end