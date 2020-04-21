%dimensi crop yang diinginkan
%close all;
%clear all;
%clc;

%load datasampel
tg=6000
lb=2500
fgabung=uint8(zeros(tg,lb,length(datasampel)));
for i=1; length (datasampel)
    f=datasampel(i);
    fc=potongcitra(f,tg,lb);
    fgabung(:,:,i)=uint8(fc);
    subplot(2,3,i);imshow(fc);
end