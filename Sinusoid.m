x = -100:100;

dt = 1000;
dr = 55;
d1 = sqrt(x.^(2) + dt^(2));
d2 = dr + sqrt((x - dr).^(2) + dt^(2));

c = 3e8;
t1 = d1 / c;
t2 = d2 / c;

s1 = 1 * exp(j * 300 * pi * 1e6 * t1);
s2 = 1 * exp(j * 300 * pi * 1e6 * t2);
r = s1 + s2;
res = abs(r);
plot(res);