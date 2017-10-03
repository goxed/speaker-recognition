function [s]= dist(x,y)
c1=wav2melc1(x);
c2=wav2melc1(y);
k1=kmeanlbg(c1,25);
k2=kmeanlbg(c2,25);
d=disteusq(c1,c2);
s=sum(d);
sum(s)
