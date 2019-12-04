clear; close all; clc;

syms kp ki s G

% DC = (kp + ki/s + ki/s);
% P = (-7940.5*(s+3.126e6)) / (s^2 + 231*s + 4.632e9);
% 
% G = (DC * P) / (1 + DC*P);



disp('KP')
solve((4.632e9 - ((7940.5*3.126e6)*kp)) == 0)
solve((231-(7940.5*kp)) == 0)

disp('KI')
solve(() == 0)


