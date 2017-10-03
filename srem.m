function c = srem(x)
c=zeros(100000,1); 
size(x,1);
for i=1:size(x,1)
    if x(i)>.15 | x(i)<-0.15
        break;
    end
end

start=i;

for i=size(x,1):-1:1
    if x(i)>.15 | x(i)<-0.15
        break;
    end
end
stop=i;

c=zeros(stop-start+1,1);

j=1;
c=x(start:stop);
%for i=start:stop
 %   c(j)=x(i);
  %  j=j+1;
  %end
% 
%     start
%     stop