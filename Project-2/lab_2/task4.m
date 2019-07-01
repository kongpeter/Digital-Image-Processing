I_low=imread('lenna512_low_dynamic_range.bmp');%load iamge
[height,width]=size(I_low);
r=zeros(1,256);
for i=1:height
   for j=1:width
       r(I_low(i,j)+1)= r(I_low(i,j)+1)+1;
    end
end  %calculate the histogram of image
     %the gray value of every pixels
     
s=zeros(1,256);
s(1)=r(1);
for i=2:256
    s(i)=s(i-1)+r(i);
end       %distributed functions

for i=1:256
    s(i)=floor(255*s(i)/(height*width));
end   %take the frequency of all gray pixels, from 0-255

 I_en=I_low;
for i=1:height
   for j=1:width
       I_en(i,j)= s(I_low(i,j)+1);
    end
end%obtain the output

m=zeros(1,256);
for i=1:height
   for j=1:width
       m(I_en(i,j)+1)= m(I_en(i,j)+1)+1;
    end
end  %calculate the histogram grey value

figure, imshow(I_low);  %show the reference image
figure, imhist(I_low);  %show the histogram
figure,imshow(I_en);    %show the enhanced image                     
figure, imhist(I_en);   %show the histogram
PSNR_enhance=psnr(I_en,I_low);%psnr