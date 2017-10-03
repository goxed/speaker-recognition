k=zeros(32,2);

j=0;

for i=1:32
    f1=ceil(rand*a1(1));
    s1=ceil(rand*256);
    k(i,1)=s1;
    k(i,2)=c1(f1,s1);
end;
figure;
hold on
%plot(k(:,1),k(:,2),'.')
small=100000;
pt=0;
for i=1:a1(1)
    for j=1:256
        for m=1:32
            d= sqrt((j-k(m,1))^2+(c1(i,j)-k(m,2))^2);
            if d < small
                small = d;
                pt=m;
            end;
        end;
        k(pt,1)=(k(pt,1)+j)/2;
        k(pt,2)=(k(pt,2)+c1(i,j))/2; % Determine New Centroid
    end;
end;
hold on
plot(k(:,1),k(:,2),'x')
        
k=zeros(32,2);

j=0;

for i=1:32
    f1=ceil(rand*a2(1));
    s1=ceil(rand*256);
    k(i,1)=s1;
    k(i,2)=c2(f1,s1);
end;
hold on
%plot(k(:,1),k(:,2),'.')
small=100000;
pt=0;
for i=1:a2(1)
    for j=1:256
        for m=1:32
            d= sqrt((j-k(m,1))^2+(c2(i,j)-k(m,2))^2);
            if d < small
                small = d;
                pt=m;
            end;
        end;
        k(pt,1)=(k(pt,1)+j)/2;
        k(pt,2)=(k(pt,2)+c2(i,j))/2; % Determine New Centroid
    end;
end;
hold on
plot(k(:,1),k(:,2),'.')
        
k=zeros(32,2);

j=0;

for i=1:32
    f1=ceil(rand*a2(1));
    s1=ceil(rand*256);
    k(i,1)=s1;
    k(i,2)=c3(f1,s1);
end;
hold on
%plot(k(:,1),k(:,2),'.')
small=100000;
pt=0;
for i=1:a2(1)
    for j=1:256
        for m=1:32
            d= sqrt((j-k(m,1))^2+(c3(i,j)-k(m,2))^2);
            if d < small
                small = d;
                pt=m;
            end;
        end;
        k(pt,1)=(k(pt,1)+j)/2;
        k(pt,2)=(k(pt,2)+c3(i,j))/2; % Determine New Centroid
    end;
end;
hold on
plot(k(:,1),k(:,2),'*')
            
            