A=imread('lenna512.bmp');
datacursormode on%obtain the coordinate
B=imcrop(A,[200 210 160 170]);%get the image information after cutted
imshow(B)%show the cutted image
