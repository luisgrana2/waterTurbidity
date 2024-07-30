function img = patterns(imgsz_,freq,type)
    if type == "square"
        freq1 = [ones(imgsz_/(freq*2),imgsz_/(freq*2)), zeros(imgsz_/(freq*2),imgsz_/(freq*2));...
            zeros(imgsz_/(freq*2),imgsz_/(freq*2)), ones(imgsz_/(freq*2),imgsz_/(freq*2))];
        img = repmat(freq1,[freq freq]);
    elseif type == "bars"
        freq1 = [ones(imgsz_,imgsz_/(freq*2)), zeros(imgsz_,imgsz_/(freq*2))];
        img = repmat(freq1,[1 freq]);
    end
img = mat2gray(img);
end