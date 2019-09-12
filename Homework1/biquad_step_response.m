function biquad_step_response()

A = 2;
w=3;

figure('Name','Zeta = 0.1')
zeta = .1;
s = tf('s');
G = (A)/((s^2/w^2)+(2*zeta*s/w)+1);
step(G)
title('Step Response Zeta = 0.1')


figure('Name','Zeta = .5')
zeta = .5;
s = tf('s');
G = (A)/((s^2/w^2)+(2*zeta*s/w)+1);
step(G)
title('Step Response Zeta = 0.5')


figure('Name','Zeta = 1')
zeta = 1;
s = tf('s');
G = (A)/((s^2/w^2)+(2*zeta*s/w)+1);
step(G)
title('Step Response Zeta = 1')
end