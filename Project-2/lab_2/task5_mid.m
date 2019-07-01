a=imread('im_SP.bmp');%load the image
figure,imshow(a);
b=3;%define the size of window
mid=mid_filter(a,b);
figure,imshow(mid);
PSNR_mid=psnr(mid,a);%calculate the psnr
