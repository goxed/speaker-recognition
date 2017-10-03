function calc_distance(z1,z2,z3,z4)
x1=wav2melc(z1);
x2=wav2melc(z2);
x3=wav2melc(z3);
x4=wav2melc(z4);
[v1,es11,j1]=kmeanlbg(x1,20);
[v2,es12,j2]=kmeanlbg(x2,20);
[v3,es13,j3]=kmeanlbg(x3,20);
[v4,es14,j4]=kmeanlbg(x4,20);
s1=sum(sum(disteusq(j1,j2)));
s2=sum(sum(disteusq(j1,j3)));
s3=sum(sum(disteusq(j1,j4)));
s4=sum(sum(disteusq(j2,j3)));
s5=sum(sum(disteusq(j2,j4)));
s6=sum(sum(disteusq(j3,j4)));
disp('j1+j2'); s1 
disp('j1+j3'); s2 
disp('j1+j4'); s3 
disp('j2+j3'); s4 
disp('j2+j4'); s5
disp('j3+j4'); s6 




