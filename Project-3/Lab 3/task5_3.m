N=4;%define the input N
inverse_output=inverse_dct(output);%use previous DCT function
figure,imagesc(output),colormap(gray(64)),colorbar,axis on,grid on;
figure,imagesc(inverse_output),colormap(gray(64)),colorbar,axis on,grid on;
