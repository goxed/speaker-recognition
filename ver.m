function [c,user] = match(x,n)
clc;
load feat;
c1=wav2melc1(x);
%c1=kmeanlbg(c1,10);
score=0;
count=0;
max1=26;
c=0;
for n=n
    
    for l=2:5 %l is feature element
            %ck=kmeanlbg(feature{n}{l},10);
            ck=feat{n}{l};
        for k=1:max1
            c2=ck(:,k);
            c3=c1(:,k);
            %c2=(ct-mean(ct))/std(ct);
            %c3=(cu-mean(cu))/std(cu);
            a=crosscorr(c2,c3,10);
            max(a);
                if max(a)>0.51
                    count=count+1;
                    %count = (count+(max1-k-1)/max1);
                end
        end        
         score=score+count;  
         count=0;
    end
end

if score>44
    c=score;
else 
    c=score;
end;

user=feat{n}{1};
