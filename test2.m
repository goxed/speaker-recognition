c1=wav2melc1('vr1.wav');
c2=wav2melc1('vr2.wav');
c3=wav2melc1('vr3.wav');
c4=wav2melc1('am2.wav');
k1=kmeanlbg(c1,10);
k2=kmeanlbg(c2,10);
k3=kmeanlbg(c3,10);
k4=kmeanlbg(c4,10);
disp('1 to 2 3 4');
sum(disteusq(k1,k2))
sum(disteusq(k1,k3))
sum(disteusq(k1,k4))
disp('3 to 1 2 4');
sum(disteusq(k3,k1))
sum(disteusq(k3,k2))
sum(disteusq(k3,k4))

