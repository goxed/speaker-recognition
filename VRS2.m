
len=size(t1);
u = zeros(len,1);
j=1;
for i=1:size(t1)
    if t1(i) > 0.87 | t1(i) < 0.83
     u(j) = t1(i);
       j=j+1;
    end
 end
 v=zeros(j-1,1);
 for i=1:j-1
     v(i)=u(i);
 end
 
 
 
    
        
        