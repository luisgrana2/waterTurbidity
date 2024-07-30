close all
clear 
clc

sz = 512;
freq = 4;

radius_low = [0.25e3,1e3,3e3,10e3];
final_std = [100.1,40.1,18.1,9.1];

n = log2(freq)-1;

%Determine the radius of the circle depending image size
radius_hp = 10;
radius_lp = radius_low(n);

%Band Pass Filter
hf = highpfilter("ideal",sz,sz,radius_hp);
lf = lowpfilter("ideal",sz,sz,radius_lp);
bf = double(and(hf, lf));

figure,surf(fftshift(bf)),colormap winter

%Depending on the pattern, the user wants to analyze the  last parameter of
%the function pattern should be:
%"bars": Vertical white and black bars.
%"square": Chess table.
pat = patterns(sz,freq,"square");
F = fft2(pat);
Fc0 = fftshift(F.*bf);


%Define a loop of standard deviations
init = 1.1;
last = final_std(n);
step = 1;

std = init:step:last;
window = [100 100];
power = zeros(numel(std),1);

%Gaussian filter applied to simulate turbidity
for i = std
    gauss = fspecial('gaussian',window,i);
    filtered =imfilter(pat,gauss);
    %figure,imshow(filtered)
    F = fft2(filtered);
    Fc = fftshift(F.*bf);
    %Store the power in each iteration
    power(round((i-init)/step)+1,1) = sum(sum(abs(Fc).^2));
end

%Final result

figure,plot(std,power),
title("Water Turbidity"),
ylabel('|F|^2'),xlabel('Std');

figure,surf(abs(Fc0));
