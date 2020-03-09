clear all; close all; clc;
[x, rect] = imcrop(imread('1.bmp'),[1014.5 1210.5 292 372]); %perintah untuk memotong citra dengan ukuran yang telah ditentukan.
k=1; %nama citra pertama yang akan dipotong
for n=1:90 %panjang file yang akan di proses
i= imread(strcat(num2str(k),'.bmp')); %membaca file yang akan diproses
crop= imcrop(i, rect);%perintah memotong citra
gray= rgb2gray(crop); %mengubah citra asli(rgb)ke citra grayscale
kontras=imadjust(gray, stretchlim(gray),[]);%perintah untuk penajaman kontras
imwrite (kontras, strcat('A',num2str(n),'.bmp'));% menyimpan citra baru hasil preprocessing      
k=k+1; %perintah untuk kenaikan nama file secara berurutan 
end
konci