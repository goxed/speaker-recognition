c1=wav2melc('am1.wav');

c2=wav2melc('am.wav');

%subplot(2,1,1)
%plot(c1)
%subplot(2,1,2)
%plot(c2)

for i=1 : 10
    
C1=fft(c1(:,i),size(c1,1));
C2=fft(c2(:,i),size(c2,1));
Pc1=C1.*conj(C1)/size(c1,1);
Pc2=C2.*conj(C2)/size(c2,1);
f1=22000/size(c1,1)*(0:size(c1,1)/2);
f2=22000/size(c2,1)*(0:size(c2,1)/2);
%figure
%plot(f1(2:100),Pc1(2:100),'r');
%hold on;
%plot(f2(2:100),Pc2(2:100),'g');

%figure
a=crosscorr(Pc1(2:100),Pc2(2:100),10);
max(a)
end

%count=0;
%max1=26;
%for n=1:max1
    %figure;
 %   a=crosscorr(c1(:,n),c2(:,n),60);
  %  max(a)
   % if max(a)>0.38
    %    count = (count+(max1-n)/max1);
    % end
    %end
%count

