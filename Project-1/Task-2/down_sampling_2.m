A=imread('lenna512.bmp');
B = imresize(A,0.5,'nearest');
imshow(B)
axis on;