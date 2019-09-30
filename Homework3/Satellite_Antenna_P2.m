function Satellite_Antenna_P2()
% Problem 2

s = tf('s');

J = 600000; %kg*m^2
B = 20000; % N*m*sec
k = [200,400,1000,2000];

for ik = 1:length(k)
    G = (k(ik)/J) / (s^2 + (B/J)*s + (k(ik)/J));
    step(G)
    hold on
end
legend('200','400','1000','2000')
end