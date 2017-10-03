function c = match(x)
clc;
clear;
load feature;
c1=wav2melc(x);

for n=1:size(feature,2)
    max1=26;
    for k=1:max1
    a=crosscorr(c1(:,n),c2(:,n),60);
        if max(a)>0.38
            count = (count+(max1-n)/max1);
        end
    end        
score(n)=score(n)+count;
end











count=0;
user=[0 0];

usercount=0;

for n=1:max1
    a=crosscorr(c1(:,n),c2(:,n),60);
    max(a);
    if max(a)>0.38
        count = (count+(max1-n)/max1);
    end
end
count
usercount = usercount+1;
if count > user(1)
    user(1)=count;
    user(2)=usercount;
end

    count =0;
for n=1:max1
    %figure;
    a=crosscorr(c1(:,n),c3(:,n),60);
    max(a);
    if max(a)>0.38
        count = (count+(max1-n)/max1);
    end
end
count
usercount = usercount+1;
if count > user(1)
    user(1)=count;
    user(2)=usercount;
end
count =0;

for n=1:max1
    %figure;
    a=crosscorr(c1(:,n),c4(:,n),60);
    max(a);
    if max(a)>0.38
        count = (count+(max1-n)/max1);
    end
end

count
usercount = usercount+1;
if count > user(1)
    user(1)=count;
    user(2)=usercount;
end

count =0;
for n=1:max1
    %figure;
    a=crosscorr(c1(:,n),c5(:,n),60);
    max(a);
    if max(a)>0.38
        count = (count+(max1-n)/max1);
    end
end

count
usercount = usercount+1;
if count > user(1)
    user(1)=count;
    user(2)=usercount;
end

count =0;
for n=1:max1
    %figure;
    a=crosscorr(c1(:,n),c6(:,n),60);
    max(a);
    if max(a)>0.38
        count = (count+(max1-n)/max1);
    end
end

count
usercount = usercount+1;
if count > user(1)
    user(1)=count;
    user(2)=usercount;
end

count=0;

for n=1:max1
    %figure;
    a=crosscorr(c1(:,n),c7(:,n),60);
    max(a);
    if max(a)>0.38
        count = (count+(max1-n)/max1);
    end
end

count

usercount = usercount+1;
if count > user(1)
    user(1)=count;
    user(2)=usercount;
end

count=0;

for n=1:max1
    %figure;
    a=crosscorr(c1(:,n),c8(:,n),60);
    max(a);
    if max(a)>0.38
        count = (count+(max1-n)/max1);
    end
end

count
usercount = usercount+1;
if count > user(1)
    user(1)=count;
    user(2)=usercount;
end

count=0;

for n=1:max1
    %figure;
    a=crosscorr(c1(:,n),c9(:,n),60);
    max(a);
    if max(a)>0.38
        count = (count+(max1-n)/max1);
    end
end
usercount = usercount+1;
if count > user(1)
    user(1)=count;
    user(2)=usercount;
end

count

user
%data(user(2))