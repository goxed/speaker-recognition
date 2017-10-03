
frame=enframe(v,256,100);
ham=hamming(256);
i=1;
a=size(frame);
c=zeros(a(1),a(2));
temp = zeros(1,256);
for i=1:a(1)
    temp = frame(i,:);
    temp=temp';
    temp=temp.*ham;
    temp=temp';
    frame(i,:) = temp;
    c(i,:)=rceps(frame(i,:));
end;


    
    
    