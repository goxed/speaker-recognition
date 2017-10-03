function c = rec(n,k)
load feature;
clc
disp('Please Say "MICROSOFT, COMPUTER, Triple I T, Yahoo"');
pause(1);
disp('Comon Speak Up dude');
pause(0.05);
a=wavrecord(22000*4,22000);
a=srem(a);
   a=a+1;
    a=a/max(a);
c=melcepst(a,11500,'n',26,floor(10*log(22500)),200,80,0.01,0.51);
feature{n}{k+1}=c;
save feature feature;
clear;


