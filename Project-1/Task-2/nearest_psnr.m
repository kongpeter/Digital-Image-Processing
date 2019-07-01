A=imread('lenna512.bmp');
B = imresize(A,0.5,'nearest');
C = imresize(B,2,'nearest');
Upsample_Original_PSNR=psnr(C,A);