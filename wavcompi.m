function c = wavcomp(x,y)

c1=wav2melc(x);
c2=wav2melc(y);
max1=26;
count=0;
for n=1:max1
    a=crosscorr(c1(:,n),c2(:,n),60);
    max(a);
    if max(a)>0.38
        count = (count+(max1-n)/max1);
    end
end
c=count;