I=imread('lenna512_low_dynamic_range.bmp');   
[m,n,k]=size(I);  
figure (1)  
imshow('lenna512_low_dynamic_range.bmp');title('Original image');   
mid=mean(mean(I));%calculate mean value  
%horizontal axis 
fa=120; fb=180;  
%vertical axis 
ga=50; gb=200;  
J=LinearEnhance(I,fa,fb,ga,gb);  
figure (2)  
imshow(J);title('After Contrast enhancing');   
pixel_f=1:256;  
pixel_g=zeros(1,256);  
  
%Three slopes  
k1=double(ga/fa);   
k2=(gb- ga)/(fb- fa);  
k3=(256- gb)/(256- fb);  
for i=1:256  
    if i <= fa  
        pixel_g(i)= k1*i;  
    elseif fa < i && i <= fb  
        pixel_g(i)= k2*( i- fa)+ ga;  
    else  
        pixel_g(i)= k3*( i - fb)+ gb;  
    end  
end  
figure (3)  
plot(pixel_f,pixel_g);
title('Piecewise-Linear Transformation');  
PSNR_linear=psnr(J,I);
figure (4),imhist(I);
figure (5), imhist(J);