 function c = wav2melc(x)
 t1=wavread(x);
 t1=t1*1/max(t1);
 %t=srem1(t1);
 t1=t1+1;
 t1=t1/mean(t1);
 max1=30;
 c=melcepst(t1,22000,'h',max1,floor(3*log(22000)),1024,512,0.1,0.5);
 %for(k=1:max1)
  %   c(:,k)=(c(:,k)-mean(c(:,k)))/std(c(:,k));
  %end

     
     
     