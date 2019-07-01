function F=inverse_dct(input)
[im_DCT, DCT_basis]=projection_an_image_on_its_DCT_bases(input);
N=size(input,1);%obtain the  length of input image
F=zeros(N,N);%inversed image to zero matrix
for i=1:N
    for j=1:N
        F=F+DCT_basis{i,j}*im_DCT(i,j);
    end 
end
end