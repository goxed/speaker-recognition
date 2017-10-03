
a(1).name = 'abhishek';
a(1).rec1 = 'am1.wav';
a(1).rec2 = 'am2.wav';

a(2).name = 'vikas';
a(2).rec1 = 'vr1.wav';
a(2).rec2 = 'vr2.wav';

for i=1:1:2
  if strcmp(a(i).name,'vikas')
   sprintf(a(i).name)
   c=wavread(a(i).rec1);
   wavplay(c);
end 

end
      
      