t = 0:0.01:1;
f = 5;
u = square(2*pi*f*t);
subplot(3,1,1);
plot(t,u);
grid on;