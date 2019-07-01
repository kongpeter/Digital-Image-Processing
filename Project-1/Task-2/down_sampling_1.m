A=imread('lenna512.bmp');
[line,row]=size(A);
A_NEW=A(1:2:row, 1:2:line);
imwrite(A_NEW,'down_sample.png')
imshow('down_sample.png')