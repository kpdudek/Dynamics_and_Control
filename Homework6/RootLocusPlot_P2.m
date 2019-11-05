function RootLocusPlot_P2()

%% a
s = tf('s');
G = (s+2) / (s*(s+1)*(s+5)*(s+10));

rlocus(G)

%% b 
s = tf('s');
G = (s^2+2*s+8) / (s*(s^2+2*s+10));

rlocus(G)

%% c
s = tf('s');
G = (s+3) / (s^3*(s+4));

rlocus(G)

%% d
s = tf('s');
G = (s+2) / ((s+10)*(s^2-1));

rlocus(G)
end