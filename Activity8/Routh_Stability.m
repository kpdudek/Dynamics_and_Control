function Routh_Stability()

s = tf('s');

k = 5;
k0 = 100;
z = 3;
a = 10;
p = 14;

condition1 = p > 0;
condition2 = k*k0*z - a^2*p > 0;
condition3 = (p*(k*k0-a^2) - (k*k0*z - a^2*p)) / (p) > 0;

% condition1 = p > 0;
% condition2 = z < p;
% condition3 = (a^2 * p) / (k0 * z);

if ~condition1
    fprintf('Condition 1 failed\n')
end
if ~condition2
    fprintf('Condition 2 failed\n')
end
if ~condition3
    fprintf('Condition 3 failed\n')
end

G = (k*k0*(s+z)) / (s^3 + p*s^2 + (k*k0-a^2)*s + (k*k0*z-a^2*p));

figure()
pzmap(G)

figure()
step(G)
end