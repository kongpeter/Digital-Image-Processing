width = 256;
a=8;
N=width/a;
n=(1:width)-1;
x = 1+cos(2*pi*n/N)+ cos(4*pi*n/N);% 
im = ones(width,1)*x;
subplot(1,3,1),imshow(abs(im),[]);

im_fft2=fft2(im);
subplot(1,3,2),imshow(log(abs(im_fft2)));

im_fftshift=fftshift(im_fft2);
subplot(1,3,3),imshow(log(abs(im_fftshift)));