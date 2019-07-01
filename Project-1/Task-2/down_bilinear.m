A=imread('lenna512.bmp');
B = imresize(A,0.5,'bilinear');
imshow(B)