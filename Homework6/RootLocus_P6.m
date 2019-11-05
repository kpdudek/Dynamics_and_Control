%% a
s = tf('s');

R_delta = (-.0184*(s+.0068)) / ((s+.2647)*(s+.0063));

stepinfo(R_delta)

%% b
s = tf('s');

R_delta = (-.0184*(s+.0068)) / (s*(s+.2647)*(s+.0063));

H = s;

sys = feedback(R_delta,H);

pzmap(sys)
rlocus(R_delta)


rltool(R_delta)
