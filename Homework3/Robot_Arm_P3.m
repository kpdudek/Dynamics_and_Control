function Robot_Arm_P3()

s = tf('s');

% k = [1,5,10,15,20];
k = [1000000];
for ik = 1:length(k)
    G = k(ik) / ((s+10)*(s^2 + 4*s + 10));
    step(G)
    hold on
end
% legend('1','5','10','15','20')
end