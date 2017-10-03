function [a,b,c] = match(x)
clc;
load feature;
c1=wav2melc(x);
%c1=kmeanlbg(c1,10);
score=zeros(1,size(feature,2));
count=0;
max1=26;
for n=1:size(feature,2)
    
    for l=2:5 %l is feature element
            %ck=kmeanlbg(feature{n}{l},10);
            ck=feature{n}{l};
        for k=1:max1
            c2=ck(:,k);
            c3=c1(:,k);
            %c2=(ct-mean(ct))/std(ct);
            %c3=(cu-mean(cu))/std(cu);
            a=crosscorr(c2,c3,10);
            max(a);
                if max(a)>0.5
                    count=count+1;
                    %count = (count+(max1-k-1)/max1);
                end
        end        
         score(n)=score(n)+count;  
         count=0;
    end
end

for i=1:n
    feature{i};
    score(i);
end;

max1=0;

for i=1:3
    for j=1:n
        if score(j)>max1
            max1=score(j);
            l=j;
        end
    end;
    if i==1
        a=feature{l}{1};
    end;
    if i==2
        b=feature{l}{1};
    end;
    if i==1
        c=feature{l}{1};
    end;

    score(l);
    score(l)=0;
    max1=0;
end


