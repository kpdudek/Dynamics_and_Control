function FeedbackControl_P5()

%% Part a -- Proportional controller

s = tf('s');

k = .172;

G = k / (s^2 + 2*s + 1 + k);

[y,t] = step(G);
plot(t,y,'LineWidth',2)
xlabel('Time (s)')

%% Part b -- Proportional integral

s = tf('s');

kp = -.568;
ki = .0246;

check1 = ki > 0;
check2 = kp > ((ki-2)/2);

if ~check1
    fprintf('Condition 1 failed\n')
end
if ~check2
    fprintf('Condition 2 failed\n')
end

G = (kp*s + ki) / (s^3 + 2*s^2 + (1+kp)*s + ki);


[y,t] = step(G);
disp(stepinfo(y,t))
plot(t,y,'LineWidth',2)
xlabel('Time (s)')

%% Part c -- Proportional integral derivative control

s = tf('s');

kp = 2003;
ki = 400;
kd = 118;

check1 = ki > 0;
check2 = kd > -2;
check3 = kp > (-kd + ki -2) / (kd + 2);

if ~check1
    fprintf('Condition 1 failed\n')
end
if ~check2
    fprintf('Condition 2 failed\n')
end
if ~check3
    fprintf('Condition 3 failed\n')
end

G = (kp*s + ki + kd*s^2) / (s^3 + (2+kd)*s^2 + (1+kp)*s + ki);


[y,t] = step(G);
disp(stepinfo(y,t))
plot(t,y,'LineWidth',2)
xlabel('Time (s)')

end