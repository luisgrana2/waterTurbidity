sz = 512;
freq = [4 8 16 32];
name = ["bars","square"];
t = 1;
figure,
for j = 1:2
    design = name(j);
    for i = freq
        pat = patterns(sz,i,design);
        subplot(2,4,t),imshow(pat),
        title('Pattern '+design+newline+"Freq: "+num2str(i));
        t = t+1;
    end
end