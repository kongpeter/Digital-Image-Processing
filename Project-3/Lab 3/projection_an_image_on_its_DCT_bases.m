function [im_DCT, DCT_bases]=projection_an_image_on_its_DCT_bases(im)
N=size(im,1);%length of input image
DCT_bases=dct_basic(N);%apply the previous basic function
im_DCT=zeros(N,N);%zeros intital matrix
for i=1:N
    for j=1:N
        x=DCT_bases{i,j}.*im;
        im_DCT(i,j)=sum(x(:));%calculate F(k,l)
    end
end
end