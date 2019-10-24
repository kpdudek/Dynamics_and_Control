function PID_TapeDrive_Activity9()
%% P Control
s = tf('s');

k = 10;

G = (200*k) / (s^2 + 12*s + 200*k +20);

pzmap(G)

step(G)

%% PD Control
s = tf('s');

kp = 21.5;
kd = .9;

k = kp + kd*s;

G = (200*k) / (s^2 + 12*s + 200*k +20);

pzmap(G)

[y,t] = step(G);
S = stepinfo(y,t);
disp(S.Overshoot)

figure()
fv = ones(size(t)).*(200*kp) / (20+200*kp);
plot(t,y,'b',t,fv,':r','LineWidth',2);
end