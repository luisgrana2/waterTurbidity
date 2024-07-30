clc
clear
close all

%Height: 8.1 cm

%Change and configure to laboratory camera
cam = webcam('Logitech StreamCam');
cam.Resolution = '1920x1080';
    


% Simulation Values
maxTurbidity = 2.2283e+14;
minTurbidity = 1.7228e+12;

img = snapshot(cam);
frameSize = size(img);

videoPlayer = vision.VideoPlayer('Position',[0 0 [frameSize(2), frameSize(1)+20]]);
runLoop = true;
[mylampr,mylampg,lg] = ui_turbidity();

while runLoop 
    videoFrame = snapshot(cam);
    videoFrame_gray = rgb2gray(videoFrame);

    %Process to only analyze the pattern
     videoFrame_gray = imcrop(videoFrame_gray,[300 220 511 511]);

    s = size(videoFrame_gray);

    videoFrame_adjust = videoFrame_gray;
    F = fft2(videoFrame_adjust);

    %Determine the radius of the circle depending image size
    radius_hp = 10;
    radius_lp = 3e3;

    hf = highpfilter("ideal",size(videoFrame_adjust,1),size(videoFrame_adjust,2),radius_hp);
    lf = lowpfilter("ideal",size(videoFrame_adjust,1),size(videoFrame_adjust,2),radius_lp);
    bf = double(and(hf, lf));

    Fc = fftshift(F.*bf);

    power = sum(sum(abs(Fc).^2));
    lg.Value = (power-minTurbidity)/(maxTurbidity-minTurbidity);

    step(videoPlayer,videoFrame_gray);
    runLoop = isOpen(videoPlayer);
end

clear cam;
release(videoPlayer);

mylampr.Visible = not(runLoop);
mylampg.Visible = runLoop;
lg.Value = 0;
