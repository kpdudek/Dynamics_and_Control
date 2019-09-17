function Changing_Poles_1()
%% Setup
s = tf('s');


%%
p = 1;
H = p/(s+p);
step(H)
hold on

%%
p = 10;
H = p/(s+p);
step(H)
end