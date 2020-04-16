function [citracrop] = potongcitra(citrainput,tinggi,lebar)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
% citra input bertype grayscale

f=citrainput;
tg=tinggi;
lb=lebar;

cp2=size(f,2)/2;
bp2=size(f,1)/2;
ymin=bp2-(tg/2);
xmin=cp2-(lb/2);
rect=[xmin ymin lb-1 tg-1];

citracrop=imcrop(f,rect);
end