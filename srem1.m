function [l] = srem(x)
 
t=size(x,1);
l=zeros(t,1);
n=1;
step=1600;
for i=1:step:(size(x,1)-step)
    s=x(i:i+step);   
    if (max(s)>0.16 | min(s)<-0.16)
        for(k=1:step)
            l(n)=x(i+k-1);
            n=n+1;
        end;
            
    end
end
n
l=l(1:n);
%plot(l);
%