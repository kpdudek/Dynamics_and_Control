%=========================================================================
% tuningSystem: file for the PID tuning activity for ME 404 
%
%   tuningSystem(kp,Ti,Td) plots the step response of a particular system
%   so that you can tune the response to your liking. Note that if all
%   three entries are set to zero, you get the open loop response.
%
%   To remind you, the Z-N rules for a first order system are:
%       P: kp = 1/RL  (R = slope of rise, L = lag)
%       PI: kp = 0.9/RL, Ti = L/0.3
%       PID: kp = 1.2/RL, Ti = 2L, Td = 0.5L
%
%   The Z-N rules based on the ultimate gain are:
%       P: kp = 0.5ku   (ku = ultimate gain)
%       PI: kp = 045ku, Ti = pu/1.2  (pu = ultimate period)
%       PID: kp = 1.6ku, Ti = 0.5pu, Td = 0.125 pu
%=========================================================================

function bl= tuningSystem(kp,Ti,Td)

%=========================================================================

% Define the plant
%=========================================================================
P = tf(1,[1 9 23 15]);

%=========================================================================
% Set the closed loop system
%=========================================================================
if( (kp == 0) & (Ti == 0) & (Td == 0) )
    Gcl = P;
elseif( (kp > 0) && (Ti == 0) && (Td == 0) )
    Dc = kp;
    Gcl = feedback(Dc*P,1);
elseif( (kp > 0) && (Ti > 0) && (Td == 0 ) )
    Dc = kp*(1 + tf(1,[Ti 0]) );
    Gcl = feedback(Dc*P,1);
elseif( (kp > 0) && (Ti > 0) && (Td > 0) )
    Dc = kp*(1 + tf(1,[Ti 0]) + Td*tf([1 0],1));
    Gcl = feedback(Dc*P,1);
end

%=========================================================================
% Do the step response
%=========================================================================
[y,t] = step(Gcl);
figure(1)
clf
plot(t,y,'linewidth',2);
grid on
hold on
plot([t(1) t(end)],1.01*[1 1],'r');
plot([t(1) t(end)],0.99*[1 1],'r');

bl=stepinfo(Gcl);