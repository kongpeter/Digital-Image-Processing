function [rate] = compress_im(im, Qmat, QP, N, file_name)
I=im;
a=size(I,1);%obtain the height of input image
b=size(I,2);%obtain the length of input image
I=double(I);%change to double

%determine the value of S
if QP>50  
    S=(100-QP)/50;
else
    S=50/QP;
end
%obtain the quantize matrix, mulitipy with S
x_qmat=S.*Qmat;

for i=1:N:a
    for j=1:N:b
        P=I(i:i+N-1,j:j+N-1);%cut the input image to blocks
        K=dct2(P);%(a) apply DCT of the blocks
        I2(i:i+N-1,j:j+N-1)=K;
        K=round(K./x_qmat);%(b) quantize
        I3(i:i+N-1,j:j+N-1)=K;%obtain the blocks image in frequency domain
    end
end

y_encode=entropy_enc(I3);%(c) encode the blocks image

%%%%%(d)
y_vector=fopen(file_name,'w');%fopen
fwrite(y_vector,y_encode,'uint8');%save the entropy encoded vector as file_name
fclose(y_vector);

rate=(fsize(file_name))*8/a/b;%(e) evaluate the bit rate



