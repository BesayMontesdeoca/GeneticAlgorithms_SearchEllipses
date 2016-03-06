function [siz]=Show_Ellipse(ellipse)
im = zeros(100,100);
for i=1:length(ellipse)
    x = ellipse(i,1);
    y = ellipse(i,2);
    if (x < 101 && y < 101 && x > 0 && y > 0)
        im(x,y) = 255;
    end
end
siz = size(im);
imshow(im)
end
