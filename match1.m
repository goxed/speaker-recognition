function [a,b,c,d] = match1(x)
clc;
load feat;
c1=wav2melc1(x);
%c1=kmeanlbg(c1,10);
score=zeros(1,size(feat,2));
count=0;
max1=30;
%plot(c1');
for n=1:size(feat,2)
    
    for l=2:5 %l is feature element
            %ck=kmeanlbg(feature{n}{l},10);
            ck=feat{n}{l};
            %plot(ck');
        for k=1:max1
            c2=ck(:,k);
            c3=c1(:,k);
            %c2=(ct-mean(ct))/std(ct);
            %c3=(cu-mean(cu))/std(cu);
            a=crosscorr(c2,c3,3);
            max(a);
                if max(a)>0.58
                    count=count+1;
                    %count = (count+(max1-k-1)/max1);
                end
        end        
         score(n)=score(n)+count;  
         count=0;
    end
end

for i=1:n
    feat{i};
    score(i);
end;

max1=0;
a='null';
b='null';
c='null';
l=0;
for i=1:3
    for j=1:n
        if score(j)>max1
            max1=score(j);
            l=j;
        end
    end;
    a;
    if i==2 & max1>0
        b=feat{l}{1};
       
    end;
    if i==3 & max1>0
        c=feat{l}{1};
        max1
    end;
    if i==1 & max1>0 
        a=feat{l}{1};
         d=l;
    end;

    score(l);
    score(l)=0;
    max1=0;
end



