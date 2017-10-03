%melcepst(v1,22000,'t',20,floor(3*log(22000)),256,100,0,0.5);
t1=wavread('b1.wav');
t2=wavread('s2.wav');
t3=wavread('c1.wav');

%t1=t1(:,2);

%t2=t2(:,2);
%t3=t3(:,2);

% ABHISHEK'S VOICE
len1=size(t1);
u1 = zeros(len1,1);
j1=1;
for i=1:size(t1)
    if t1(i) > 0.06 | t1(i) < -0.01
     u1(j1) = t1(i);
       j1=j1+1;
    end
 end

%Second Voice
 v1=zeros(j1-1,1);
 for i=1:j1-1
     v1(i)=u1(i);
 end

 len3=size(t3);
u3 = zeros(len3,1);

j3=1;
for i=1:size(t3)
    if t3(i) > 0.06 | t3(i) < -0.01
     u3(j3) = t3(i);
       j3=j3+1;
    end
 end

 v3=zeros(j3-1,1);
 for i=1:j3-1
     v3(i)=u3(i);
 end

 %VIKAS'S VOICE
 
len2=size(t2);
u2 = zeros(len2,1);
j2=1;

for i=1:size(t2)
    if t2(i) > 0.06 | t2(i) < -0.01
     u2(j2) = t2(i);
       j2=j2+1;
    end
 end

 v2=zeros(j2-1,1);
 for i=1:j2-1
     v2(i)=u2(i);
 end
 
 
v1=v1+1;
v2=v2+1;
v3=v3+1;

v1=v1/max(v1);
v2=v2/max(v2);
v3=v3/max(v3);

subplot(3,2,1)
plot(v1)
subplot(3,2,2)
plot(v2)
subplot(3,2,3)
plot(v3)


frame1=enframe(v1,256,100);
frame2=enframe(v2,256,100);
frame3=enframe(v3,256,100);

ham=hamming(256);
a1=size(frame1);
a2=size(frame2);
a3=size(frame3);

c1=zeros(a1(1),a1(2));
c2=zeros(a2(1),a2(2));
c3=zeros(a3(1),a3(2));

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

for i=1:a3(1)
    temp = frame3(i,:);
    temp=temp';
    temp=temp.*ham;
    temp=temp';
    frame3(i,:) = temp;
    c3(i,:)=rceps(frame3(i,:));
    
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

sum3=zeros(256);

for i=1:a3(1)
   z=c3(i,:);
   z=z';
   sum3(i)=sum(z,1);
end


subplot(2,2,3)
plot(c1(10,:)')
subplot(2,2,4)
plot(c2(10,:)')

figure

subplot(2,1,1)
%plot(sum1)

subplot(2,1,2)
%plot(sum2)







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% K KMEANS ALGO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

            


    
    



