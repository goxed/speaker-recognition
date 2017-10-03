 function c = wav2melc(x)
 t1=wavread(x);
 t1=t1+1;
 t1=t1/max(t1);
 max1=30;
 c=melcepst(t1,22000,'tc',max1,floor(4*log(22000)),256,128,0.01,0.51);
 for(k=1:max1)
     c(:,k)=(c(:,k)-mean(c(:,k)))/std(c(:,k));
 end
 
     
     
     