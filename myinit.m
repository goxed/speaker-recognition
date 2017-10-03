%melcepst(v1,22000,'t',20,floor(3*log(22000)),256,100,0,0.5);
t1=wavread('am1.wav');
t2=wavread('am3.wav');

%t1=t1(:,2);
%t2=t2(:,2);

% ABHISHEK'S VOICE

t1=t1+1;
t2=t2+1;

t1=t1/max(t1);
t2=t2/max(t2);

subplot(2,2,1)
plot(t1)
subplot(2,2,2)
plot(t2)


frame1=enframe(v1,256,100);
frame2=enframe(v2,256,100);

ham=hamming(256);
a1=size(frame1);
a2=size(frame2);

c1=zeros(a1(1),a1(2));
c2=zeros(a2(1),a2(2));

temp = zeros(1,256);

for i=1:a1(1)
    temp = frame1(i,:);
    temp=temp';
    temp=temp.*ham;
    temp=temp';
    frame1(i,:) = temp;
    c1(i,:)=rceps(frame1(i,:));
end
  
for i=1:a2(1)
    temp = frame2(i,:);
    temp=temp';
    temp=temp.*ham;
    temp=temp';
    frame2(i,:) = temp;
    c2(i,:)=rceps(frame2(i,:));
    
end;

z=zeros(256);
sum1=zeros(256);

for i=1:a1(1)
   z=c1(i,:);
   z=z';
   sum1(i)=sum(z,1);
end


sum2=zeros(256);

for i=1:a2(1)
   z=c2(i,:);
   z=z';
   sum2(i)=sum(z,1);
end


subplot(2,2,3)
plot(c1')
subplot(2,2,4)
plot(c2')

figure

subplot(2,1,1)
plot(sum1)

subplot(2,1,2)
plot(sum2)