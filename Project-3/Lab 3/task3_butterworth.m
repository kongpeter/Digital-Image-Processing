x=imread('fence.jpg');
x=rgb2gray(x);%change the photo into gray
x=double(x);%change type to double
g=fft2(x);%apply FFT to photo
figure,imshow(g),title('After Fourier Transform');
g=fftshift(g);%Apply fftshift
figure,imshow(log(abs(g)),[]),title('After Shift');
[M,N]=size(g);%obtain the size of input frequency domain photo
nn=2;
d0=5;%set the cut-off frequency
m=fix(M/2);n=fix(N/2);
for i=1:M
    for j=1:N
        d=sqrt((j-n)^2);%the vertical fence
        d1=sqrt((i-m)^2);%the horizontal fence
        h=1/(1+0.414*(d/d0)^(2*nn));%calculate the low pass filter transfer function
        output(i,j)=h*g(i,j);
    end
end
output=ifftshift(output);
figure,imshow(abs(output)),title('After ifftshift');
output1=fftshift(output);
J2=ifft2(output);
J3=uint8(J2);
figure,imshow(J3);