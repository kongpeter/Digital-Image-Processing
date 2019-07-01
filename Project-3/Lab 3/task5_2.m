N=4;%define the input N
im=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];%define the input matrix
output=projection_an_image_on_its_DCT_bases(im);%use previous DCT function
figure,imagesc(im),colormap(gray(64)),colorbar,axis on,grid on;
figure,imagesc(output),colormap(gray(64)),colorbar,axis on,grid on;
