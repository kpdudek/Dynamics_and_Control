function Robot_Arm_P3()

s = tf('s');

% k = [1,5,10,15,20];
k = 100;

for ik = 1:length(k)
    G = k(ik) / ((s+10)*(s^2 + 4*s + 10));
    [y,t] = step(G);
    fv = k(ik) / 100;
    
    S = stepinfo(y,t);
    
    ss_error = S.SettlingMax - fv;
    disp(ss_error)
    plot(t,y,'LineWidth',2)
    set(gca,'FontSize',14)
    hold on
end
% legend('1','5','10','15','20')


%%
s = tf('s');

% k = [1,5,10,15,20];
k = 100;

G = k / ((s+10)*(s^2 + 4*s + 10)+k);

[y,t] = step(G);
fv = k / 100;

S = stepinfo(y,t);

ss_error = S.SettlingMax - fv;
disp(ss_error)

plot(t,y,'LineWidth',2)
set(gca,'FontSize',14)
hold on


end