close all; clear; clc;

s = tf('s');

%% a
k = 1;
G = (s+2)/(s+10);
bode(G)
figure()
nyquist(G*k)

[Mag,Phase,w] = bode(G);
mag = zeros(1,length(Mag));
phase = zeros(1,length(Mag));
mag(1,:) = Mag(1,1,:);
phase(1,:) = Phase(1,1,:);

len = length(mag);
mult = floor(len/15);
idx = 1:mult:len;

magP = mag(idx);
phaseP = phase(idx);

disp(magP)
disp(phaseP)

figure()
subplot(2,1,1)
semilogx(w,mag)
hold on
semilogx(w(idx),magP,'ro')
subplot(2,1,2)
semilogx(w,phase)
hold on
semilogx(w(idx),phaseP,'ro')

%% b
k = 1;
G = ((s+10)*(s+1))/((s+100)*(s+2)^3);
bode(G)
figure()
nyquist(G*k)

[Mag,Phase,w] = bode(G);
mag = zeros(1,length(Mag));
phase = zeros(1,length(Mag));
mag(1,:) = Mag(1,1,:);
phase(1,:) = Phase(1,1,:);

len = length(mag);
mult = floor(len/15);
idx = 1:mult:len;

magP = mag(idx);
phaseP = phase(idx);

disp(magP)
disp(phaseP)

figure()
subplot(2,1,1)
semilogx(w,mag)
hold on
semilogx(w(idx),magP,'ro')
subplot(2,1,2)
semilogx(w,phase)
hold on
semilogx(w(idx),phaseP,'ro')

%% c
k = 10000000;
G = (s+1)/(s+3);
bode(G)
figure()
nyquist(G*k)

[Mag,Phase,w] = bode(G);
mag = zeros(1,length(Mag));
phase = zeros(1,length(Mag));
mag(1,:) = Mag(1,1,:);
phase(1,:) = Phase(1,1,:);

len = length(mag);
mult = floor(len/15);
idx = 1:mult:len;

magP = mag(idx);
phaseP = phase(idx);

disp(magP)
disp(phaseP)

figure()
subplot(2,1,1)
semilogx(w,mag)
hold on
semilogx(w(idx),magP,'ro')
subplot(2,1,2)
semilogx(w,phase)
hold on
semilogx(w(idx),phaseP,'ro')


