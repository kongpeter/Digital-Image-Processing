function [imo] = decompress_im(Qmat, QP, N, file_name)

y_com=fopen(file_name,'r');%open the code
y_encode=fread(y_com,'uint8');
fclose(y_com);

I_decompress=entropy_dec(y_encode);%apply the decode
x_resize=sqrt(size(I_decompress,1));%obtain the size of input compressed image

I_decompress=reshape(I_decompress,x_resize,x_resize);%reshape the image into N*N
a=size(I_decompress,1);%obtain the height of new reshape image
b=size(I_decompress,2);

if QP>50%determine the QP
    S=(100-QP)/50;
else
    S=50/QP;
end

x_qmat=S.*Qmat;%determine the quantize matrix


for i=1:N:a
    for j=1:N:b
        P=round(I_decompress(i:i+N-1,j:j+N-1).*x_qmat);%inverse quantify
        K=idct2(P);%apply inverse DCT
        I_decompress(i:i+N-1,j:j+N-1)=K;%combine the block image
    end
end

imo=uint8(I_decompress);%output new image after compressed

