im=imread('lenna512.bmp');
im_wn=imnoise(im,'gaussian',0,10);%add gaussian noise
figure,imshow(im_wn);
im_SP=imnoise(im,'salt & pepper',0.1);%add sp noise
figure,imshow(im_SP);
im_low_dynamic_range=imread('lenna512_low_dynamic_range.bmp');
psnr_im_wn=psnr(im_wn,im);%calculate psnr of gaussian
psnr_im_SP=psnr(im_SP,im);%psnr of SP noise
psnr_im_low_dynamic_range=psnr(im_low_dynamic_range,im);%psnr of LDR
figure,imhist(im);
figure,imhist(im_wn);
figure,imhist(im_SP);
figure,imhist(im_low_dynamic_range);
imwrite(im_SP,'im_SP.bmp');