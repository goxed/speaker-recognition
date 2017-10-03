 function c = wav2melc1(x)
 t1=wavread(x);
 t1=t1*1/max(t1);
 %t1=srem1(t1);
 t1=t1+1;
 t1=t1/mean(t1);
 max1=30;
 c=melcepst(t1,22000,'h0',max1,floor(8*log(22000)),4096,2048,0.0,0.5);
 %for(k=1:max1)
 %    c(:,k)=(c(:,k)-mean(c(:,k)))/std(c(:,k));
 %end

     
     
     