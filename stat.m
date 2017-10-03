 function c = wav2melcepst(x)
           t1=wavread('x');
           
           t1=t1+1;
for i=1:size(t1)
    if t1(i)>1.3 
        t1(i)=1.3;
    end
    if t1(i)<0.6
        t1(i)=0.6;
    end
end

t1=t1/max(t1);

c=melcepst(t1,22500,'t',20,floor(3*log(22500)),128,64,0,0.5);
