x=0:1:255;%generate a vector x = [1:256]
N =256;
t=0:N-1;
%figure,plot(t,x);%plot vector x
%xlabel('Time (s)');
%ylabel('Amplitude');
%title('Input sequence')


%DFT
y_dft=fft(x);%Apply Fast Fourier transform to x
%figure,stem(0:N-1,abs(y_dft));  
%xlabel('Frequency');
%ylabel('|X(k)|');
%title('DFT'); 

%high frequency to zero
y_fftshift=fftshift(y_dft);%Apply fftshift to result of fft
y_fftshift(1:112)=0;%Make high frequency component to 0
y_fftshift(145:256)=0;
y_idft=ifft(fftshift(y_fftshift));%applt inverse fourire transform
figure,plot(abs(y_idft));%plot the result
xlabel('Time (s)');
ylabel('Amplitude');
title('Output DFT reconstructed line')



%DCT
y_dct=dct(x);%Apply Discrete cosine transform to x
%figure,stem(abs(y_dct));%plot the result
%xlabel('Frequency');
%ylabel('|X(k)|');
%title('DCT');

%High frequency to zero
y_dct(33:256)=0;%make high frequency to 0
y_idct=idct(y_dct);%Apply inverse DCT
figure,plot(y_idct);%plot the results
xlabel('Time (s)');
ylabel('Amplitude');
title('Output DCT reconstructed line')

PSNR_DFT=psnr(y_idft,x);%calculate the psnr of DFT
PSNR_DCT=psnr(y_idct,x);%calculate tge psnr of DCT

