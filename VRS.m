
len=size(t);
u = zeros(len,1);
j=1;
for i=1:size(t)
    if t(i) > 0.57 | t(i) < 0.52
     u(j) = t(i);
       j=j+1;
    end
 end
 v=zeros(j-1,1);
 for i=1:j-1
     v(i)=u(i);
 end
 
 
 
    
        
        