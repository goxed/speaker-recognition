 function [f] = wav2freq(x)
 t1=wavread(x);
 t1=t1+1;
 t1=t1/mean(t1);
 f=0;
 f=zeros(1024,1024);
 c=enframe(t1,1024,512);
 for(n=1:size(c,1))
     F=fft(c);
     F=F.*conj(F)/1024;
          hold on;
     plot(F);
 end;
 
     
 
 
     
     
     