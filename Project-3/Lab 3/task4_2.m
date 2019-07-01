Ref=imread('lenna512.bmp');
A=imread('lenna_ds440.bmp');%load the image
new_size=[512 512];%inout the new size
%ser the normalization factor,depens on the original size and new size
normalization1=new_size(:,1)/size(A,1);
normalization2=new_size(:,2)/size(A,2);
normalization=normalization1*normalization2;
subplot(2,3,1),imshow(A),title('Original photo');%show original photo
A_fft=fft2(A)*normalization;%apply fft on original photo
subplot(2,3,2),imshow(log(abs(A_fft)),[]),title('frequency domain photo');%show fft frequency photo
A_fft=fftshift(A_fft);%shift high frequency
subplot(2,3,3),imshow(log(abs(A_fft)),[]),title('fftshift photo');%show iamge after fftshift
y=zero_padding(A_fft,new_size);%apply zero-padding function
subplot(2,3,4),imshow(log(abs(y)),[]),title('after zero-padding photo');%show zero-padding photo
y_fftshift=fftshift(y);%shift frequency zero-padding
subplot(2,3,5),imshow(log(abs(y_fftshift)),[]),title('fftshift photo');%show photo after zero-padding
output=ifft2(y_fftshift);%apply inverse fft
output=uint8(output);%change data type to uint8
subplot(2,3,6),imshow(output),title('New photo');%show new photo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output_nearest=imresize(A,[512,512],'nearest');
output_lanczos3=imresize(A,[512 512],'lanczos3');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PSNR_zero=psnr(output,Ref);
PSNR_nearest=psnr(output_nearest,Ref);
PSNR_lanczo3=psnr(output_lanczos3,Ref);
