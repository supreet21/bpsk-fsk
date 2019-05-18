clc 
close all 
clear all 

fc1 = 20;
fc2 = 50;
fp = 10;
amp = 4
amp=amp/2;
t=0:0.001:1; 
c1=amp.*sin(2*pi*fc1*t);% For Generating 1st Carrier Sine wave
c2=amp.*sin(2*pi*fc2*t);% For Generating 2nd Carrier Sine wave
subplot(4,1,1); 
plot(t,c1)
xlabel('Time')
ylabel('Amplitude')
title('Carrier 1 Wave')
ylim([-amp-1 amp+1]);
subplot(4,1,2) 
plot(t,c2)
xlabel('Time')
ylabel('Amplitude')
title('Carrier 2 Wave')
ylim([-amp-1 amp+1]);
m=amp.*square(2*pi*fp*t)+amp;%For Generating Square wave message
subplot(4,1,3) 
plot(t,m)
xlabel('Time')
ylabel('Amplitude')
title('Binary Message Pulses')
ylim([-1+min(m) 1+max(m)]);
for i=0:1000 %here we are generating the modulated wave
    if m(i+1)==0
        mm(i+1)=c2(i+1);
        else
        mm(i+1)=c1(i+1);
    end
end
subplot(4,1,4) 
plot(t,mm)
xlabel('Time')
ylabel('Amplitude')
title('Modulated Wave')
ylim([-amp-1 amp+1]);