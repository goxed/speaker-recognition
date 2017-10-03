function c = match1(x)
clc;
load feat;
c1=wav2melc1(x);
c1=kmeanlbg(c1,7);
%c1=kmeanlbg(c1,10);
score=zeros(1,size(feat,2));
count=0;
max1=30;
%plot(c1');
for n=1:size(feat,2)
    for l=2:5 
        ck=kmeanlbg(feat{n}{l},7);
        d=disteusq(c1,ck,'s')
        count = count+sum(min(d,[],2));%+sum(min(d,[],1));            
    end;
         score(n)=count;  
         count=0;
end

for i=1:n
    feat{i}{1}
    score(i)
end;

max1=1e5;

for i=1:3
    for j=1:n
        if score(j)<max1
            max1=score(j);
            l=j;
        end
    end;
    feat{l}{1}
    score(l)
    score(l)=1e5;
    max1=1e5;
end


