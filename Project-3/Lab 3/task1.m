%(1)
x=0:1:255;%generate a vector x = [1:256]
N =256;
t=0:N-1;
subplot(3,3,1),plot(t,x);%plot vector x
xlabel('Time (s)');
ylabel('Amplitude');
title('Input sequence')
 
%DFT
y_dft=fft(x);%Apply Fast Fourier transform to x
subplot(3,3,2),plot(0:N-1,abs(y_dft));  
xlabel('Frequency');
ylabel('|X(k)|');
title('DFT'); 
%high frequency to zero
y_fftshift=fftshift(y_dft);%Apply fftshift to result of fft
subplot(3,3,3),plot(log(abs(y_fftshift)));
y_fftshift(1:32)=0;%Make high frequency component to 0
y_fftshift(225:256)=0;
subplot(3,3,4),plot(t,abs(y_fftshift));
y_idft=ifft(fftshift(y_fftshift));%applt inverse fourire transform
subplot(3,3,5),plot(abs(y_idft));%plot the result


%DCT
y_dct=dct(x);%Apply Discrete cosine transform to x
subplot(3,3,6),plot(abs(y_dct));%plot the result
xlabel('Frequency');
ylabel('|X(k)|');
title('DCT');
%High frequency to zero
y_dct(225:256)=0;%make high frequency to 0
subplot(3,3,7),plot(t,y_dct);%plot the results
y_idct=idct(y_dct);%Apply inverse DCT
subplot(3,3,8),plot(y_idct);%plot the results

%%%PSNR
PSNR_DFT=psnr(y_idft,x);%calculate the psnr of DFT
PSNR_DCT=psnr(y_idct,x);%calculate tge psnr of DCT
