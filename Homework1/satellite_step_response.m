function satellite_step_response()

M = 100;
m = 10;
b = .05;
k = 30;

s = tf('s');
G = (m*s^2 + b*s + k) / (m*M*s^4 + (m+M)*b*s^3 + (m+M)*k*s^2);
step(G)

end