function Changing_Poles_2()
s = tf('s');

p1 = 1;
p2 = 100;

H = (p1*p2)/((s+p1)*(s+p2));

step(H)

end