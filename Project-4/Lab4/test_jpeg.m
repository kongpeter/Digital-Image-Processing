im=imread('lenna512.bmp');%read the original photo
QP=99;
imwrite(im,'compress.jpeg','Quality',QP);
im_1=imread('compress.jpeg');
a=size(im_1,1);
b=size(im_1,2);


rate=fsize('compress.jpeg')*8/a/b;
PSNR=psnr(im_1,im);

