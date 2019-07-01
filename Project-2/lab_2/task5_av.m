a=imread('im_SP.bmp');%load image
figure,imshow(a);
b=3;%defien the size of window
av=av_filter(a,b);%call function
figure,imshow(av);%show image after average filter
PSNR_av=psnr(av,a);%calculate psnr