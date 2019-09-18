function StepResponse_Problem4()
%% Part A
figure('Name','A')
s = tf('s');
G = 1/(s^2+2*s+2);
step(G,20)

%% Part B
figure('Name','B')
s = tf('s');
G = (exp(-s))/(s^2+2*s+2);
step(G,20)

%% Part C
figure('Name','C')
s = tf('s');
G = (exp(-10*s))/(s^2+2*s+2);
step(G,20)

end