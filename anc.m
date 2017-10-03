for i=1:100
s=wavrecord(5,5000);
s=-s;
wavplay(s,5000);
end;

