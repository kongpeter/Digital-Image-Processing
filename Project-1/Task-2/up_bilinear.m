A=imread('2-down-bilinear.png');
B = imresize(A,2,'bilinear');
imshow(B)