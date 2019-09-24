function RampResponse_Problem2()

%
% Only poles. No Zeros
% Part B
%
% p = 1
p = 1;
t = 0:.1:10;
s = tf('s');
H = p/(s+p);
lsim(H,t,t)

%% p = 10
p = 10;
t = 0:.01:1.5;
s = tf('s');
H = p/(s+p);
lsim(H,t,t)

%% p = -1
p = -1;
t = 0:.1:10;
s = tf('s');
H = p/(s+p);
lsim(H,t,t)

%% p = -10
p = -10;
t = 0:.01:1;
s = tf('s');
H = p/(s+p);
lsim(H,t,t)

%
% Poles and zeros
% Part C
%% p = 1 , z = .9
p = 1;
z = .9;
t = 0:.1:1;
s = tf('s');
H = (p/z)*((s+z)/(s+p));
lsim(H,t,t)

%% p = 1 , z = 10.1
p = 1;
z = 10.1;
t = 0:.1:10;
s = tf('s');
H = (p/z)*((s+z)/(s+p));
lsim(H,t,t)

%% p = 10 , z = .9
p = 10;
z = .9;
t = 0:.1:10;
s = tf('s');
H = (p/z)*((s+z)/(s+p));
lsim(H,t,t)

%% p = 10 , z = 10.1
p = 10;
z = 10.1;
t = 0:.00001:.001;
s = tf('s');
H = (p/z)*((s+z)/(s+p));
lsim(H,t,t)

%% p = -1 , z = -.9
p = -1;
z = -.9;
t = 0:.1:10;
s = tf('s');
H = (p/z)*((s+z)/(s+p));
lsim(H,t,t)

%% p = -1 , z = -10.1
p = -1;
z = -10.1;
t = 0:.1:10;
s = tf('s');
H = (p/z)*((s+z)/(s+p));
lsim(H,t,t)

%% p = -10 , z = -.9
p = -10;
z = -.9;
t = 0:.01:5;
s = tf('s');
H = (p/z)*((s+z)/(s+p));
lsim(H,t,t)

%% p = -10 , z = -10.1
p = -10;
z = -10.1;
t = 0:.01:5;
s = tf('s');
H = (p/z)*((s+z)/(s+p));
lsim(H,t,t)

%% p = -1 , z = -1
p = -1;
z = -1;
t = 0:.1:10;
s = tf('s');
H = (p/z)*((s+z)/(s+p));
lsim(H,t,t)
end