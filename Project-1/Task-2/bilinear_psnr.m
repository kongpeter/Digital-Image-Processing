A=imread('lenna512.bmp');
B = imresize(A,0.5,'bilinear');
C = imresize(B,2,'bilinear');
Upsample_Original_PSNR=psnr(C,A);