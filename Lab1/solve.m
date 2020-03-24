global a b m k;
a = 6;
b = 3;
m = 1;
k = 0.25;

y0 = [pi/2 pi/3 3 1];
t0 = 0;
tstep = 0.001;
tend = 100;
tout = t0:tstep:tend;
[t, y] = ode45(@f, tout, y0);

plot(t, y);