function [c,user] = ver1(x,n)
load feature;
c1=wav2melc(x);
%c1=kmeanlbg(c1,10);
score=0;
count=0;
max1=26;
for n=n
    
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
         score=score+count;  
         count=0;
    end
end
a=score;
feature{n}{1};
if score>3
    c=score;
end;

user=feature{n}{1};
