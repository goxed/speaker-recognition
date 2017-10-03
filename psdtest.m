%files=(['aj.wav'],['aj1.wav'],['am1.wav'],['vr1.wav']);
test=wavread('vr3.wav');
s1=wavread('pk1.wav');
s2=wavread('am1.wav');
s3=wavread('vr1.wav');

s=size(test);
TEST = fft(test,s(1));
TEST = TEST.*conj(TEST);
TEST = TEST(200:5000);
s=size(s1);
S1 = fft(test,s(1));
S1 = S1.*conj(S1);
S1 = S1(200:5000);
s=size(s2);
S2 = fft(test,s(1));
S2 = S2.*conj(S2);
S2 = S2(200:5000);
s=size(s3);
S3 = fft(test,s(1));
S3 = S3.*conj(S3);
S3 = S3(200:5000);


