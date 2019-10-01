function SecondOrderSysID_P5()
%% Base Model
s = tf('s');
G = 130 / (s^2 + 6*s + 100);

[y,t] = step(G);
S = stepinfo(y,t);

plot(t,y,'LineWidth',2)
set(gca,'FontSize',14)

%% Single Noise Sample
s = tf('s');
G = 130 / (s^2 + 6*s + 100);

[y,t] = step(G);
y = y + .1*randn(size(y));
S = stepinfo(y,t);

plot(t,y,'LineWidth',2)
set(gca,'FontSize',14)

%% Averaging Noise
s = tf('s');
G = 130 / (s^2 + 6*s + 100);

[y,t] = step(G);

len = 100;
ynoise = zeros(length(y(:,1)),len);
for i = 1:len
    ynoise(:,i) = y + .1*randn(size(y));
end

ymean = mean(ynoise,2);
S = stepinfo(ymean,t);

plot(t,ynoise,'LineWidth',2)
set(gca,'FontSize',14)
figure()
plot(t,y,'r',t,ymean,'b','LineWidth',2)
set(gca,'FontSize',14)
legend('True','Averaged')

end